#!/bin/bash

# lookup-quad.sh
# Performs reverse DNS lookups of all quad/A.A.A.A format IP addresses

for a in {1..223}
do
	if [ $a -ne 10 ] && [ $a -ne 127 ]
	then
	nslookup "$a.$a.$a.$a" 1.1.1.1
	fi
done
