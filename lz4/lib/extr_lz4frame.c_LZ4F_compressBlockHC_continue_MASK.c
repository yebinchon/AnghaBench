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
typedef  int /*<<< orphan*/  LZ4F_CDict ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,char*,int,int) ; 

__attribute__((used)) static int FUNC1(void* ctx, const char* src, char* dst, int srcSize, int dstCapacity, int level, const LZ4F_CDict* cdict)
{
    (void)level; (void)cdict; /* init once at beginning of frame */
    return FUNC0((LZ4_streamHC_t*)ctx, src, dst, srcSize, dstCapacity);
}