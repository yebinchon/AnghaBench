#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dStage; int /*<<< orphan*/  frameInfo; } ;
typedef  int /*<<< orphan*/  LZ4F_frameInfo_t ;
typedef  size_t const LZ4F_errorCode_t ;
typedef  TYPE_1__ LZ4F_dctx ;

/* Variables and functions */
 size_t BHSize ; 
 int /*<<< orphan*/  LZ4F_ERROR_frameDecoding_alreadyStarted ; 
 int /*<<< orphan*/  LZ4F_ERROR_frameHeader_incomplete ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (TYPE_1__*,void const*,size_t const) ; 
 size_t const FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (void const*,size_t) ; 
 scalar_t__ FUNC4 (size_t const) ; 
 scalar_t__ dstage_getFrameHeader ; 
 scalar_t__ dstage_storeFrameHeader ; 
 size_t const FUNC5 (int /*<<< orphan*/ ) ; 

LZ4F_errorCode_t FUNC6(LZ4F_dctx* dctx,
                                   LZ4F_frameInfo_t* frameInfoPtr,
                             const void* srcBuffer, size_t* srcSizePtr)
{
    FUNC0(dstage_getFrameHeader < dstage_storeFrameHeader);
    if (dctx->dStage > dstage_storeFrameHeader) {
        /* frameInfo already decoded */
        size_t o=0, i=0;
        *srcSizePtr = 0;
        *frameInfoPtr = dctx->frameInfo;
        /* returns : recommended nb of bytes for LZ4F_decompress() */
        return FUNC2(dctx, NULL, &o, NULL, &i, NULL);
    } else {
        if (dctx->dStage == dstage_storeFrameHeader) {
            /* frame decoding already started, in the middle of header => automatic fail */
            *srcSizePtr = 0;
            return FUNC5(LZ4F_ERROR_frameDecoding_alreadyStarted);
        } else {
            size_t const hSize = FUNC3(srcBuffer, *srcSizePtr);
            if (FUNC4(hSize)) { *srcSizePtr=0; return hSize; }
            if (*srcSizePtr < hSize) {
                *srcSizePtr=0;
                return FUNC5(LZ4F_ERROR_frameHeader_incomplete);
            }

            {   size_t decodeResult = FUNC1(dctx, srcBuffer, hSize);
                if (FUNC4(decodeResult)) {
                    *srcSizePtr = 0;
                } else {
                    *srcSizePtr = decodeResult;
                    decodeResult = BHSize;   /* block header size */
                }
                *frameInfoPtr = dctx->frameInfo;
                return decodeResult;
    }   }   }
}