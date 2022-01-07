
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_streamHC_t ;
typedef int LZ4F_CDict ;


 int LZ4F_blockIndependent ;
 int LZ4F_initStream (void*,int const*,int,int ) ;
 int LZ4_compress_HC_continue (int *,char const*,char*,int,int) ;
 int LZ4_compress_HC_extStateHC_fastReset (void*,char const*,char*,int,int,int) ;

__attribute__((used)) static int LZ4F_compressBlockHC(void* ctx, const char* src, char* dst, int srcSize, int dstCapacity, int level, const LZ4F_CDict* cdict)
{
    LZ4F_initStream(ctx, cdict, level, LZ4F_blockIndependent);
    if (cdict) {
        return LZ4_compress_HC_continue((LZ4_streamHC_t*)ctx, src, dst, srcSize, dstCapacity);
    }
    return LZ4_compress_HC_extStateHC_fastReset(ctx, src, dst, srcSize, dstCapacity, level);
}
