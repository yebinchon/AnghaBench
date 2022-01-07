
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_stream_t ;


 int LZ4_compress_destSize_extState (int *,char const*,char*,int*,int) ;

int LZ4_compress_destSize(const char* src, char* dst, int* srcSizePtr, int targetDstSize) {
 LZ4_stream_t ctx;
 return LZ4_compress_destSize_extState(&ctx, src, dst, srcSizePtr, targetDstSize);
}
