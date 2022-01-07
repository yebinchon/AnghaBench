
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dStage; int frameInfo; } ;
typedef int LZ4F_frameInfo_t ;
typedef size_t const LZ4F_errorCode_t ;
typedef TYPE_1__ LZ4F_dctx ;


 size_t BHSize ;
 int LZ4F_ERROR_frameDecoding_alreadyStarted ;
 int LZ4F_ERROR_frameHeader_incomplete ;
 int LZ4F_STATIC_ASSERT (int) ;
 size_t LZ4F_decodeHeader (TYPE_1__*,void const*,size_t const) ;
 size_t const LZ4F_decompress (TYPE_1__*,int *,size_t*,int *,size_t*,int *) ;
 size_t LZ4F_headerSize (void const*,size_t) ;
 scalar_t__ LZ4F_isError (size_t const) ;
 scalar_t__ dstage_getFrameHeader ;
 scalar_t__ dstage_storeFrameHeader ;
 size_t const err0r (int ) ;

LZ4F_errorCode_t LZ4F_getFrameInfo(LZ4F_dctx* dctx,
                                   LZ4F_frameInfo_t* frameInfoPtr,
                             const void* srcBuffer, size_t* srcSizePtr)
{
    LZ4F_STATIC_ASSERT(dstage_getFrameHeader < dstage_storeFrameHeader);
    if (dctx->dStage > dstage_storeFrameHeader) {

        size_t o=0, i=0;
        *srcSizePtr = 0;
        *frameInfoPtr = dctx->frameInfo;

        return LZ4F_decompress(dctx, ((void*)0), &o, ((void*)0), &i, ((void*)0));
    } else {
        if (dctx->dStage == dstage_storeFrameHeader) {

            *srcSizePtr = 0;
            return err0r(LZ4F_ERROR_frameDecoding_alreadyStarted);
        } else {
            size_t const hSize = LZ4F_headerSize(srcBuffer, *srcSizePtr);
            if (LZ4F_isError(hSize)) { *srcSizePtr=0; return hSize; }
            if (*srcSizePtr < hSize) {
                *srcSizePtr=0;
                return err0r(LZ4F_ERROR_frameHeader_incomplete);
            }

            { size_t decodeResult = LZ4F_decodeHeader(dctx, srcBuffer, hSize);
                if (LZ4F_isError(decodeResult)) {
                    *srcSizePtr = 0;
                } else {
                    *srcSizePtr = decodeResult;
                    decodeResult = BHSize;
                }
                *frameInfoPtr = dctx->frameInfo;
                return decodeResult;
    } } }
}
