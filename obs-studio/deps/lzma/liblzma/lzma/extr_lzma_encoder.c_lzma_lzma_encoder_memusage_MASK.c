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
typedef  scalar_t__ const uint64_t ;
typedef  int /*<<< orphan*/  lzma_lz_options ;
typedef  int /*<<< orphan*/  lzma_coder ;

/* Variables and functions */
 scalar_t__ const UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*) ; 

extern uint64_t
FUNC3(const void *options)
{
	if (!FUNC0(options))
		return UINT64_MAX;

	lzma_lz_options lz_options;
	FUNC2(&lz_options, options);

	const uint64_t lz_memusage = FUNC1(&lz_options);
	if (lz_memusage == UINT64_MAX)
		return UINT64_MAX;

	return (uint64_t)(sizeof(lzma_coder)) + lz_memusage;
}