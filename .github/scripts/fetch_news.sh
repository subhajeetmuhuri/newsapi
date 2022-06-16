#!/usr/bin/env bash

CATEGORIES=(
    "business"
    "entertainment"
    "health"
    "science"
    "sports"
    "technology"
)

SOURCES=(
    "google-news"
    "google-news-in"
    "business-insider"
    "buzzfeed"
    "mtv-news"
    "medical-news-today"
    "new-scientist"
    "espn"
    "ars-technica"
    "wired"
    "ign"
    "polygon"
    "al-jazeera-english"
    "bbc-news"
    "cnn"
    "independent"
)

for ITEM in "${CATEGORIES[@]}"; do
    echo "${ITEM}"

    URL="https://newsapi.org/v2/top-headlines?country=in&category=${ITEM}&apiKey=${NEWSAPI_KEY}"
    curl $URL > categories/$ITEM.json
done

for ITEM in "${SOURCES[@]}"; do
    echo "${ITEM}"

    URL="https://newsapi.org/v2/top-headlines?sources=${ITEM}&apiKey=${NEWSAPI_KEY}"
    curl $URL > sources/$ITEM.json
done
