FROM node:22.11.0-alpine3.19@sha256:da778fcbffb7c3a83f1649d029a53b5f21ac6635ac24cf1b7fa7c2956d5509ed

USER 0:0

RUN corepack enable \
    && corepack enable pnpm

RUN apk add --no-cache git~=2.43.4 \
    && git config --add --system safe.directory /mermaid

ENV NODE_OPTIONS="--max_old_space_size=8192"

EXPOSE 9000 3333
