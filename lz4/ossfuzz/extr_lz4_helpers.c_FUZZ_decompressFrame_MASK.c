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
typedef  int /*<<< orphan*/  opts ;
struct TYPE_4__ {int stableDst; } ;
typedef  TYPE_1__ LZ4F_decompressOptions_t ;
typedef  int /*<<< orphan*/  LZ4F_dctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LZ4F_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void*,size_t*,void const*,size_t*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

size_t FUNC6(void* dst, const size_t dstCapacity,
                            const void* src, const size_t srcSize)
{
    LZ4F_decompressOptions_t opts;
    FUNC5(&opts, 0, sizeof(opts));
    opts.stableDst = 1;
    LZ4F_dctx* dctx;
    FUNC1(&dctx, LZ4F_VERSION);
    FUNC0(*dctx);

    size_t dstSize = dstCapacity;
    size_t srcConsumed = srcSize;
    size_t const rc =
            FUNC2(dctx, dst, &dstSize, src, &srcConsumed, &opts);
    FUNC0(!FUNC4(rc));
    FUNC0(rc == 0);
    FUNC0(srcConsumed == srcSize);

    FUNC3(dctx);

    return dstSize;
}