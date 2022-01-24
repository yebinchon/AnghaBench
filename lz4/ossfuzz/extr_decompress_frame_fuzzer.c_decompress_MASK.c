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
typedef  int /*<<< orphan*/  LZ4F_decompressOptions_t ;
typedef  int /*<<< orphan*/  LZ4F_dctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,size_t*,void const*,size_t*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,size_t*,void const*,size_t*,void const*,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(LZ4F_dctx* dctx, void* dst, size_t dstCapacity,
                       const void* src, size_t srcSize,
                       const void* dict, size_t dictSize,
                       const LZ4F_decompressOptions_t* opts)
{
    FUNC2(dctx);
    if (dictSize == 0)
        FUNC0(dctx, dst, &dstCapacity, src, &srcSize, opts);
    else
        FUNC1(dctx, dst, &dstCapacity, src, &srcSize,
                                  dict, dictSize, opts);
}