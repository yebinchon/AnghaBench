
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressionParameters {int cLevel; } ;


 int LZ4_compress_HC (char const*,char*,int,int,int ) ;

__attribute__((used)) static int LZ4_compressBlockNoStreamHC(
    const struct compressionParameters* pThis,
    const char* src, char* dst,
    int srcSize, int dstSize)
{
    return LZ4_compress_HC(src, dst, srcSize, dstSize, pThis->cLevel);
}
