#!/bin/bash

cat <<EOF > index.html
<html>
<head><title>Files:</title></head>
<body>
<h1>Index</h1>
EOF

# TODO walk through directory
for file in $(ls | grep -v 'build.sh\|index.html'); do
    echo -e "<a href='${file}'>${file}</a></br>" >> index.html
done

cat <<EOF >> index.html
</pre><hr></body>
</html>
EOF
