#!/bin/bash

# build images
docker build -t streamlit .

if [[ ($? -eq 0) ]]; then 
  echo Docker image successfully build 
  echo List of docker images 
  docker images 
else
    echo Unable to build the docker file 
    exit 1 
fi 


# Runn the docker container 
echo Running the docker container  on port 8501
docker run -p 8501:8501 streamlit