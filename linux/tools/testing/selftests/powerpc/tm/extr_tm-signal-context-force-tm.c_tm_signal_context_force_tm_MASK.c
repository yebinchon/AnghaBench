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

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  first_time ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  main_context ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(void)
{
	FUNC0(!FUNC2());
	/*
	 * Skipping if not running on 64 bits system, since I think it is
	 * not possible to set mcontext's [MSR] with TS, due to it being 32
	 * bits.
	 */
	FUNC0(!FUNC3());

	/* Will get back here after COUNT_MAX interactions */
	FUNC1(&main_context);

	if (!first_time++)
		FUNC4();

	return EXIT_SUCCESS;
}