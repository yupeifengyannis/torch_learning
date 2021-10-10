#!/bin/bash
PROJECT_DIR=$(dirname $(dirname $(readlink -f $0)))
# set env
export DEBUG=1
export REL_WITH_DEB_INFO=1
export USE_CUDA=0
export USE_CUDNN=0
export USE_FBGEMM=0
export USE_KINETO=0
export USE_MKLDNN=0
export USE_NNPACK=0
export USE_QNNPACK=0
export USE_XNNPACK=0
export USE_DISTRIBUTED=0
export USE_TENSORPIPE=0
export USE_GLOO=0
export USE_MPI=0
export USE_SYSTEM_NCCL=0
export BUILD_CAFFE2_OPS=0
export BUILD_CAFFE2=0
export BUILD_TEST=0

pushd $PROJECT_DIR/pytorch
    python setup.py develop
popd
