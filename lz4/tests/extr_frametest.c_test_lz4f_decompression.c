
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ o_scenario_e ;
typedef int U64 ;
typedef int U32 ;
typedef int LZ4F_dctx ;


 int FUZ_rand (int * const) ;
 int assert (int ) ;
 int free (void* const) ;
 void* malloc (size_t const) ;
 scalar_t__ const o_noncontiguous ;
 size_t test_lz4f_decompression_wBuffers (void const*,size_t,void* const,size_t const,scalar_t__ const,void const*,size_t,int ,int * const,int * const,int ,int ) ;

size_t test_lz4f_decompression(const void* cSrc, size_t cSize,
                               const void* srcRef, size_t decompressedSize,
                               U64 crcOrig,
                               U32* const randState,
                               LZ4F_dctx* const dCtx,
                               U32 seed, U32 testNb)
{
    o_scenario_e const o_scenario = (o_scenario_e)(FUZ_rand(randState) % 3);

    size_t const dstCapacity = (o_scenario == o_noncontiguous) ?
                               (decompressedSize * 2) + 128 :
                               decompressedSize;
    size_t result;
    void* const dstBuffer = malloc(dstCapacity);
    assert(dstBuffer != ((void*)0));

    result = test_lz4f_decompression_wBuffers(cSrc, cSize,
                                     dstBuffer, dstCapacity, o_scenario,
                                     srcRef, decompressedSize,
                                     crcOrig,
                                     randState,
                                     dCtx,
                                     seed, testNb);

    free(dstBuffer);
    return result;
}
