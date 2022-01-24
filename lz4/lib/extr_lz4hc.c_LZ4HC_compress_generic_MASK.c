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
typedef  int /*<<< orphan*/  limitedOutput_directive ;
struct TYPE_5__ {int /*<<< orphan*/ * dictCtx; } ;
typedef  TYPE_1__ LZ4HC_CCtx_internal ;

/* Variables and functions */
 int FUNC0 (TYPE_1__* const,char const* const,char* const,int* const,int const,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__* const,char const* const,char* const,int* const,int const,int,int /*<<< orphan*/ ) ; 

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
    if (ctx->dictCtx == NULL) {
        return FUNC1(ctx, src, dst, srcSizePtr, dstCapacity, cLevel, limit);
    } else {
        return FUNC0(ctx, src, dst, srcSizePtr, dstCapacity, cLevel, limit);
    }
}