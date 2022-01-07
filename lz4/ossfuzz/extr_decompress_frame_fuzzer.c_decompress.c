
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4F_decompressOptions_t ;
typedef int LZ4F_dctx ;


 int LZ4F_decompress (int *,void*,size_t*,void const*,size_t*,int const*) ;
 int LZ4F_decompress_usingDict (int *,void*,size_t*,void const*,size_t*,void const*,size_t,int const*) ;
 int LZ4F_resetDecompressionContext (int *) ;

__attribute__((used)) static void decompress(LZ4F_dctx* dctx, void* dst, size_t dstCapacity,
                       const void* src, size_t srcSize,
                       const void* dict, size_t dictSize,
                       const LZ4F_decompressOptions_t* opts)
{
    LZ4F_resetDecompressionContext(dctx);
    if (dictSize == 0)
        LZ4F_decompress(dctx, dst, &dstCapacity, src, &srcSize, opts);
    else
        LZ4F_decompress_usingDict(dctx, dst, &dstCapacity, src, &srcSize,
                                  dict, dictSize, opts);
}
