
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_stream_t ;


 int LZ4_compress_fast_extState (int *,char const*,char*,int,int,int) ;

int LZ4_compress_fast(const char* source, char* dest, int inputSize, int maxOutputSize, int acceleration) {
 LZ4_stream_t ctx;
 return LZ4_compress_fast_extState (&ctx, source, dest, inputSize, maxOutputSize, acceleration);
}
