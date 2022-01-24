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
typedef  scalar_t__ o_scenario_e ;
typedef  int /*<<< orphan*/  U64 ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  LZ4F_dctx ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void* const) ; 
 void* FUNC3 (size_t const) ; 
 scalar_t__ const o_noncontiguous ; 
 size_t FUNC4 (void const*,size_t,void* const,size_t const,scalar_t__ const,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

size_t FUNC5(const void* cSrc, size_t cSize,
                               const void* srcRef, size_t decompressedSize,
                               U64 crcOrig,
                               U32* const randState,
                               LZ4F_dctx* const dCtx,
                               U32 seed, U32 testNb)
{
    o_scenario_e const o_scenario = (o_scenario_e)(FUNC0(randState) % 3);   /* 0 : contiguous; 1 : non-contiguous; 2 : dst overwritten */
    /* tighten dst buffer conditions */
    size_t const dstCapacity = (o_scenario == o_noncontiguous) ?
                               (decompressedSize * 2) + 128 :
                               decompressedSize;
    size_t result;
    void* const dstBuffer = FUNC3(dstCapacity);
    FUNC1(dstBuffer != NULL);

    result = FUNC4(cSrc, cSize,
                                     dstBuffer, dstCapacity, o_scenario,
                                     srcRef, decompressedSize,
                                     crcOrig,
                                     randState,
                                     dCtx,
                                     seed, testNb);

    FUNC2(dstBuffer);
    return result;
}