
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_compress_fast (char const*,char*,int,int,int) ;

int LZ4_compress_default(const char* source, char* dest, int inputSize, int maxOutputSize) {
 return LZ4_compress_fast(source, dest, inputSize, maxOutputSize, 1);
}
