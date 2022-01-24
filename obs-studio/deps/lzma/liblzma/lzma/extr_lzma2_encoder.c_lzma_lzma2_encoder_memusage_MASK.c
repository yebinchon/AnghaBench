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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  lzma_coder ;

/* Variables and functions */
 scalar_t__ const UINT64_MAX ; 
 scalar_t__ FUNC0 (void const*) ; 

extern uint64_t
FUNC1(const void *options)
{
	const uint64_t lzma_mem = FUNC0(options);
	if (lzma_mem == UINT64_MAX)
		return UINT64_MAX;

	return sizeof(lzma_coder) + lzma_mem;
}