#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_6__ {scalar_t__ contentChecksumFlag; scalar_t__ contentSize; } ;
struct TYPE_7__ {TYPE_1__ frameInfo; } ;
struct TYPE_8__ {scalar_t__ totalInSize; TYPE_2__ prefs; scalar_t__ maxBufferSize; scalar_t__ cStage; int /*<<< orphan*/  xxh; } ;
typedef  int /*<<< orphan*/  LZ4F_compressOptions_t ;
typedef  TYPE_3__ LZ4F_cctx ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  LZ4F_ERROR_dstMaxSize_tooSmall ; 
 int /*<<< orphan*/  LZ4F_ERROR_frameSize_wrong ; 
 scalar_t__ LZ4F_contentChecksumEnabled ; 
 size_t FUNC0 (TYPE_3__*,void*,size_t,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (size_t const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 

size_t FUNC6(LZ4F_cctx* cctxPtr,
                        void* dstBuffer, size_t dstCapacity,
                  const LZ4F_compressOptions_t* compressOptionsPtr)
{
    BYTE* const dstStart = (BYTE*)dstBuffer;
    BYTE* dstPtr = dstStart;

    size_t const flushSize = FUNC0(cctxPtr, dstBuffer, dstCapacity, compressOptionsPtr);
    if (FUNC1(flushSize)) return flushSize;
    dstPtr += flushSize;

    FUNC4(flushSize <= dstCapacity);
    dstCapacity -= flushSize;

    if (dstCapacity < 4) return FUNC5(LZ4F_ERROR_dstMaxSize_tooSmall);
    FUNC2(dstPtr, 0);
    dstPtr += 4;   /* endMark */

    if (cctxPtr->prefs.frameInfo.contentChecksumFlag == LZ4F_contentChecksumEnabled) {
        U32 const xxh = FUNC3(&(cctxPtr->xxh));
        if (dstCapacity < 8) return FUNC5(LZ4F_ERROR_dstMaxSize_tooSmall);
        FUNC2(dstPtr, xxh);
        dstPtr+=4;   /* content Checksum */
    }

    cctxPtr->cStage = 0;   /* state is now re-usable (with identical preferences) */
    cctxPtr->maxBufferSize = 0;  /* reuse HC context */

    if (cctxPtr->prefs.frameInfo.contentSize) {
        if (cctxPtr->prefs.frameInfo.contentSize != cctxPtr->totalInSize)
            return FUNC5(LZ4F_ERROR_frameSize_wrong);
    }

    return (size_t)(dstPtr - dstStart);
}