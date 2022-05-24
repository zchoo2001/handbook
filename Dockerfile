FROM node:latest@sha256:3e2e7e08f088c7c9c0c836622f725540ade205f10160a91dd3cc899170d410ef

ENV NODE_OPTIONS=--openssl-legacy-provider

COPY . /app

RUN chown -R node:node /app
WORKDIR /app
USER node
