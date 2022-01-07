
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ state ;
struct TYPE_3__ {int internal_donotuse; } ;
typedef TYPE_1__ LZ4_streamHC_t ;
typedef int LZ4HC_CCtx_internal ;
typedef int BYTE ;


 int LZ4HC_compress_generic (int * const,char const*,char*,int*,int,int,int ) ;
 int LZ4HC_init_internal (int * const,int const*) ;
 int LZ4_compressBound (int) ;
 int LZ4_resetStreamHC_fast (TYPE_1__*,int) ;
 int LZ4_streamHC_t_alignment () ;
 int assert (int) ;
 int limitedOutput ;
 int notLimited ;

int LZ4_compress_HC_extStateHC_fastReset (void* state, const char* src, char* dst, int srcSize, int dstCapacity, int compressionLevel)
{
    LZ4HC_CCtx_internal* const ctx = &((LZ4_streamHC_t*)state)->internal_donotuse;



    assert(((size_t)state & (LZ4_streamHC_t_alignment() - 1)) == 0);

    if (((size_t)(state)&(sizeof(void*)-1)) != 0) return 0;
    LZ4_resetStreamHC_fast((LZ4_streamHC_t*)state, compressionLevel);
    LZ4HC_init_internal (ctx, (const BYTE*)src);
    if (dstCapacity < LZ4_compressBound(srcSize))
        return LZ4HC_compress_generic (ctx, src, dst, &srcSize, dstCapacity, compressionLevel, limitedOutput);
    else
        return LZ4HC_compress_generic (ctx, src, dst, &srcSize, dstCapacity, compressionLevel, notLimited);
}
