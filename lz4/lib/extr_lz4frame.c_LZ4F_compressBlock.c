
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_stream_t ;
typedef int LZ4F_CDict ;


 int LZ4F_blockIndependent ;
 int LZ4F_initStream (void*,int const*,int,int ) ;
 int LZ4_compress_fast_continue (int *,char const*,char*,int,int,int const) ;
 int LZ4_compress_fast_extState_fastReset (void*,char const*,char*,int,int,int const) ;

__attribute__((used)) static int LZ4F_compressBlock(void* ctx, const char* src, char* dst, int srcSize, int dstCapacity, int level, const LZ4F_CDict* cdict)
{
    int const acceleration = (level < 0) ? -level + 1 : 1;
    LZ4F_initStream(ctx, cdict, level, LZ4F_blockIndependent);
    if (cdict) {
        return LZ4_compress_fast_continue((LZ4_stream_t*)ctx, src, dst, srcSize, dstCapacity, acceleration);
    } else {
        return LZ4_compress_fast_extState_fastReset(ctx, src, dst, srcSize, dstCapacity, acceleration);
    }
}
