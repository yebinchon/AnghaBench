
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressionParameters {int cLevel; int LZ4_stream; } ;


 int LZ4_compress_fast_continue (int ,char const*,char*,int,int,int const) ;

__attribute__((used)) static int LZ4_compressBlockStream(
    const struct compressionParameters* pThis,
    const char* src, char* dst,
    int srcSize, int dstSize)
{
    int const acceleration = (pThis->cLevel < 0) ? -pThis->cLevel + 1 : 1;
    return LZ4_compress_fast_continue(pThis->LZ4_stream, src, dst, srcSize, dstSize, acceleration);
}
