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
 int NSEC_PER_SEC ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC4(void)
{
	FUNC1("Testing ADJ_SETOFFSET... ");
	FUNC0(stdout);

	/* Test valid values */
	if (FUNC3(NSEC_PER_SEC - 1, 1))
		return -1;

	if (FUNC3(-NSEC_PER_SEC + 1, 1))
		return -1;

	if (FUNC3(-NSEC_PER_SEC - 1, 1))
		return -1;

	if (FUNC3(5 * NSEC_PER_SEC, 1))
		return -1;

	if (FUNC3(-5 * NSEC_PER_SEC, 1))
		return -1;

	if (FUNC3(5 * NSEC_PER_SEC + NSEC_PER_SEC / 2, 1))
		return -1;

	if (FUNC3(-5 * NSEC_PER_SEC - NSEC_PER_SEC / 2, 1))
		return -1;

	if (FUNC3(USEC_PER_SEC - 1, 0))
		return -1;

	if (FUNC3(-USEC_PER_SEC + 1, 0))
		return -1;

	if (FUNC3(-USEC_PER_SEC - 1, 0))
		return -1;

	if (FUNC3(5 * USEC_PER_SEC, 0))
		return -1;

	if (FUNC3(-5 * USEC_PER_SEC, 0))
		return -1;

	if (FUNC3(5 * USEC_PER_SEC + USEC_PER_SEC / 2, 0))
		return -1;

	if (FUNC3(-5 * USEC_PER_SEC - USEC_PER_SEC / 2, 0))
		return -1;

	/* Test invalid values */
	if (FUNC2(0, -1, 1))
		return -1;
	if (FUNC2(0, -1, 0))
		return -1;
	if (FUNC2(0, 2 * NSEC_PER_SEC, 1))
		return -1;
	if (FUNC2(0, 2 * USEC_PER_SEC, 0))
		return -1;
	if (FUNC2(0, NSEC_PER_SEC, 1))
		return -1;
	if (FUNC2(0, USEC_PER_SEC, 0))
		return -1;
	if (FUNC2(0, -NSEC_PER_SEC, 1))
		return -1;
	if (FUNC2(0, -USEC_PER_SEC, 0))
		return -1;

	FUNC1("[OK]\n");
	return 0;
}