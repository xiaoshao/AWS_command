#!/bin/bash

aws ec2 describe-id-format

for resource in "reservation" "instance" "volume" "snapshot"; do 
	aws ec2 modify-id-format --resource $resource --use-long-ids
done

echo "=========after changed========="

aws ec2 describe-id-format