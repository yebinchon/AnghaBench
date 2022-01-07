
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int opts ;
struct TYPE_4__ {int stableDst; } ;
typedef TYPE_1__ LZ4F_decompressOptions_t ;
typedef int LZ4F_dctx ;


 int FUZZ_ASSERT (int) ;
 int LZ4F_VERSION ;
 int LZ4F_createDecompressionContext (int **,int ) ;
 size_t LZ4F_decompress (int *,void*,size_t*,void const*,size_t*,TYPE_1__*) ;
 int LZ4F_freeDecompressionContext (int *) ;
 int LZ4F_isError (size_t const) ;
 int memset (TYPE_1__*,int ,int) ;

size_t FUZZ_decompressFrame(void* dst, const size_t dstCapacity,
                            const void* src, const size_t srcSize)
{
    LZ4F_decompressOptions_t opts;
    memset(&opts, 0, sizeof(opts));
    opts.stableDst = 1;
    LZ4F_dctx* dctx;
    LZ4F_createDecompressionContext(&dctx, LZ4F_VERSION);
    FUZZ_ASSERT(dctx);

    size_t dstSize = dstCapacity;
    size_t srcConsumed = srcSize;
    size_t const rc =
            LZ4F_decompress(dctx, dst, &dstSize, src, &srcConsumed, &opts);
    FUZZ_ASSERT(!LZ4F_isError(rc));
    FUZZ_ASSERT(rc == 0);
    FUZZ_ASSERT(srcConsumed == srcSize);

    LZ4F_freeDecompressionContext(dctx);

    return dstSize;
}
