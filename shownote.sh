!/bin/bash

cat $* | jq '.[] | .attachments[0].service_name + ":" + .text ' | grep -v "joined the channel" | sed 's/":/* /g' | sed 's/\\n</](/g' | sed 's/>"/)/g' | sed 's/^"/* [/g' | sed 's/"$//g'
