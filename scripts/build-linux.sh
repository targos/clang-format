#!/bin/bash

set -e

mkdir llvm-project/build
cd llvm-project/build
cmake -G Ninja -DCMAKE_BUILD_TYPE=MinSizeRel -DLLVM_BUILD_STATIC=true -DLLVM_ENABLE_PROJECTS=clang ../llvm
ninja clang-format
strip bin/clang-format
