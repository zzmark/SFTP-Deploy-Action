#!/bin/bash
#

VERSION=${VERSION:-v1.2.7}
TAG=harbor.zzmark.top/bolian/sftp-deploy-action:${VERSION:-latest}

docker build . --tag=${TAG}
docker push ${TAG}

sed -i "s|image: '.*'|image: 'docker://${TAG}'|" action.yml
