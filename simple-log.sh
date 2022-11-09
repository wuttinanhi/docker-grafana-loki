#!/bin/bash
docker run -d --name simple-log --log-driver=loki \
    --log-opt loki-url="https://admin:admin@172.26.0.3/loki/api/v1/push" \
    --log-opt loki-retries=5 \
    --log-opt loki-batch-size=400 \
    hello-world
