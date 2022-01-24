#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  LZ4_streamHC_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int FUNC2 (int /*<<< orphan*/ * const,char const*,char*,int,int,int) ; 

int FUNC3(const char* src, char* dst, int srcSize, int dstCapacity, int compressionLevel)
{
#if defined(LZ4HC_HEAPMODE) && LZ4HC_HEAPMODE==1
    LZ4_streamHC_t* const statePtr = (LZ4_streamHC_t*)ALLOC(sizeof(LZ4_streamHC_t));
#else
    LZ4_streamHC_t state;
    LZ4_streamHC_t* const statePtr = &state;
#endif
    int const cSize = FUNC2(statePtr, src, dst, srcSize, dstCapacity, compressionLevel);
#if defined(LZ4HC_HEAPMODE) && LZ4HC_HEAPMODE==1
    FREEMEM(statePtr);
#endif
    return cSize;
}