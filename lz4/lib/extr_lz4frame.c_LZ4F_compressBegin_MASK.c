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
typedef  int /*<<< orphan*/  LZ4F_preferences_t ;
typedef  int /*<<< orphan*/  LZ4F_cctx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

size_t FUNC1(LZ4F_cctx* cctxPtr,
                          void* dstBuffer, size_t dstCapacity,
                          const LZ4F_preferences_t* preferencesPtr)
{
    return FUNC0(cctxPtr, dstBuffer, dstCapacity,
                                         NULL, preferencesPtr);
}