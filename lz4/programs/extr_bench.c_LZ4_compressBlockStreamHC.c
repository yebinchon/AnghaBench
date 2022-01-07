
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressionParameters {int LZ4_streamHC; } ;


 int LZ4_compress_HC_continue (int ,char const*,char*,int,int) ;

__attribute__((used)) static int LZ4_compressBlockStreamHC(
    const struct compressionParameters* pThis,
    const char* src, char* dst,
    int srcSize, int dstSize)
{
    return LZ4_compress_HC_continue(pThis->LZ4_streamHC, src, dst, srcSize, dstSize);
}
