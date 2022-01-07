
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {scalar_t__ contentChecksumFlag; scalar_t__ contentSize; } ;
struct TYPE_7__ {TYPE_1__ frameInfo; } ;
struct TYPE_8__ {scalar_t__ totalInSize; TYPE_2__ prefs; scalar_t__ maxBufferSize; scalar_t__ cStage; int xxh; } ;
typedef int LZ4F_compressOptions_t ;
typedef TYPE_3__ LZ4F_cctx ;
typedef int BYTE ;


 int LZ4F_ERROR_dstMaxSize_tooSmall ;
 int LZ4F_ERROR_frameSize_wrong ;
 scalar_t__ LZ4F_contentChecksumEnabled ;
 size_t LZ4F_flush (TYPE_3__*,void*,size_t,int const*) ;
 scalar_t__ LZ4F_isError (size_t const) ;
 int LZ4F_writeLE32 (int *,int const) ;
 int XXH32_digest (int *) ;
 int assert (int) ;
 size_t err0r (int ) ;

size_t LZ4F_compressEnd(LZ4F_cctx* cctxPtr,
                        void* dstBuffer, size_t dstCapacity,
                  const LZ4F_compressOptions_t* compressOptionsPtr)
{
    BYTE* const dstStart = (BYTE*)dstBuffer;
    BYTE* dstPtr = dstStart;

    size_t const flushSize = LZ4F_flush(cctxPtr, dstBuffer, dstCapacity, compressOptionsPtr);
    if (LZ4F_isError(flushSize)) return flushSize;
    dstPtr += flushSize;

    assert(flushSize <= dstCapacity);
    dstCapacity -= flushSize;

    if (dstCapacity < 4) return err0r(LZ4F_ERROR_dstMaxSize_tooSmall);
    LZ4F_writeLE32(dstPtr, 0);
    dstPtr += 4;

    if (cctxPtr->prefs.frameInfo.contentChecksumFlag == LZ4F_contentChecksumEnabled) {
        U32 const xxh = XXH32_digest(&(cctxPtr->xxh));
        if (dstCapacity < 8) return err0r(LZ4F_ERROR_dstMaxSize_tooSmall);
        LZ4F_writeLE32(dstPtr, xxh);
        dstPtr+=4;
    }

    cctxPtr->cStage = 0;
    cctxPtr->maxBufferSize = 0;

    if (cctxPtr->prefs.frameInfo.contentSize) {
        if (cctxPtr->prefs.frameInfo.contentSize != cctxPtr->totalInSize)
            return err0r(LZ4F_ERROR_frameSize_wrong);
    }

    return (size_t)(dstPtr - dstStart);
}
