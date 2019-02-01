#!/bin/bash
set -euo pipefail

# list token key bindings in alphabetical order
# useful to see which keys are available

echo '$mod+[a-z]'
cat config | awk '/^bindsym\s*\$mod\+[a-z]\s+/ { print $0 }' | sort

echo
echo '$mod+Shift+[a-z]'
cat config | awk '/^bindsym\s*\$mod\+Shift\+[a-z]\s+/ { print $0 }' | sort

echo
echo '$mod+Ctrl+[a-z]'
cat config | awk '/^bindsym\s*\$mod\+Ctrl\+[a-z]\s+/ { print $0 }' | sort

echo
echo '$mod+special_char'
cat config | awk '/^bindsym\s*\$mod\+[a-z]{2,}\s+/ { print $0 }'

echo
echo '$mod+Shift+special_char'
cat config | awk '/^bindsym\s*\$mod\+Shift\+[a-z]{2,}\s+/ { print $0 }'
