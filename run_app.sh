#!/bin/bash

# This script attempts to open the index.html file in your default web browser
# directly from the terminal.

FILE_TO_OPEN="index.html"

echo "Attempting to open $FILE_TO_OPEN in your default browser..."

# Use xdg-open (standard on most desktop Linux systems) to launch the file
# If xdg-open isn't available, try sensible-browser or just 'open' (on macOS)
if command -v xdg-open &> /dev/null; then
    xdg-open "$FILE_TO_OPEN"
elif command -v sensible-browser &> /dev/null; then
    sensible-browser "$FILE_TO_OPEN"
elif command -v open &> /dev/null; then
    open "$FILE_TO_OPEN"
else
    echo "Error: Could not find a suitable command (xdg-open, sensible-browser, or open) to launch the browser."
    echo "Please open the file manually by navigating to the file path in your browser:"
    echo "file://$(pwd)/$FILE_TO_OPEN"
fi

echo "Done."