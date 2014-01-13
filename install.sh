#!/bin/bash
HOME=/home/$(whoami)
CONFIGS=$(pwd)/files
echo "dotfile installer"
echo "alexander@xxor.de"
echo "========================="
echo "Install configs and shit!"
echo "home:    $HOME"
echo "configs: $CONFIGS"
echo "========================="
echo ""

ls -a $CONFIGS |
while read i; do
	if [ "$i" != '.' ] && [ "$i" != '..' ]; then
		echo -n "$CONFIGS/$i - "
		ln -s -v $CONFIGS/$i  $HOME/
	fi
done
