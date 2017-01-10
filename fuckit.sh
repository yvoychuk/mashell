#!/bin/sh

git status
if [ $? != "0" ]; then
  exit 0
fi
echo "Continue? y/n"
read choice
if [ "$choice" = "n" ]; then
  echo "Interrupted by user."
  exit 0
fi
echo "Add all? y/n"
read choice
if [ "$choice" = "y" ]; then
  echo "hey!"
  git add --all
elif [ "$choice" = "n" ]; then
  echo "Specify files"
  read files
  git add $files
fi
git commit
echo "Push? y/n"
read choice
if [ "$choice" = "y" ]; then
  git push
fi