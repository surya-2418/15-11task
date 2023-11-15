#!/bin/bash

# Get input from the user
echo "Enter a day (e.g., Mon, Tue, Wed, Thu, Fri, Sat, Sun): "
read day

# Convert input to uppercase for case-insensitivity
day=$(echo $day | tr '[:lower:]' '[:upper:]')

# Check if the day is a working day or a holiday
case $day in
    "MON" | "TUE" | "WED" | "THU" | "FRI")
        echo "It's a working day."
        ;;
    "SAT" | "SUN")
        echo "It's a holiday."
        ;;
    *)
        echo "Invalid day input. Please enter a valid day abbreviation (e.g., Mon, Tue, Wed, Thu, Fri, Sat, Sun)."
        ;;
esac
