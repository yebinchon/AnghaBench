#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ state ;
struct TYPE_3__ {int /*<<< orphan*/  internal_donotuse; } ;
typedef  TYPE_1__ LZ4_streamHC_t ;
typedef  int /*<<< orphan*/  LZ4HC_CCtx_internal ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ * const,char const*,char*,int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  limitedOutput ; 
 int /*<<< orphan*/  notLimited ; 

int FUNC6 (void* state, const char* src, char* dst, int srcSize, int dstCapacity, int compressionLevel)
{
    LZ4HC_CCtx_internal* const ctx = &((LZ4_streamHC_t*)state)->internal_donotuse;
#ifndef _MSC_VER  /* for some reason, Visual fails the aligment test on 32-bit x86 :
                   * it reports an aligment of 8-bytes,
                   * while actually aligning LZ4_streamHC_t on 4 bytes. */
    FUNC5(((size_t)state & (FUNC4() - 1)) == 0);  /* check alignment */
#endif
    if (((size_t)(state)&(sizeof(void*)-1)) != 0) return 0;   /* Error : state is not aligned for pointers (32 or 64 bits) */
    FUNC3((LZ4_streamHC_t*)state, compressionLevel);
    FUNC1 (ctx, (const BYTE*)src);
    if (dstCapacity < FUNC2(srcSize))
        return FUNC0 (ctx, src, dst, &srcSize, dstCapacity, compressionLevel, limitedOutput);
    else
        return FUNC0 (ctx, src, dst, &srcSize, dstCapacity, compressionLevel, notLimited);
}