#!/bin/sh

export DESTDIR="${HOME}/prefix"
export PATH="$DESTDIR/usr/bin:$PATH"
export LD_LIBRARY_PATH="$DESTDIR/usr/lib" #FIXME should be lib64 for a 64bit build
export PYTHONPATH=../python


cd t
for i in *.t; do echo "Testing: $i"; ./$i || exit 1; done
