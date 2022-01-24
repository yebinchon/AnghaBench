#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  limitedOutput_directive ;
struct TYPE_4__ {int /*<<< orphan*/ * dictCtx; } ;
typedef  TYPE_1__ LZ4HC_CCtx_internal ;

/* Variables and functions */
 int FUNC0 (TYPE_1__* const,char const* const,char* const,int* const,int const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  noDictCtx ; 

__attribute__((used)) static int
FUNC2 (
        LZ4HC_CCtx_internal* const ctx,
        const char* const src,
        char* const dst,
        int* const srcSizePtr,
        int const dstCapacity,
        int cLevel,
        limitedOutput_directive limit
        )
{
    FUNC1(ctx->dictCtx == NULL);
    return FUNC0(ctx, src, dst, srcSizePtr, dstCapacity, cLevel, limit, noDictCtx);
}