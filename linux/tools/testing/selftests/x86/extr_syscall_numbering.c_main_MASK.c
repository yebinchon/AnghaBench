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
 scalar_t__ ENOSYS ; 
 int X32_BIT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ nerrs ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4()
{
	/*
	 * Anyone diagnosing a failure will want to know whether the kernel
	 * supports x32.  Tell them.
	 */
	FUNC1("\tChecking for x32...");
	FUNC0(stdout);
	if (FUNC2(39 | X32_BIT, 0, 0, 0, 0, 0, 0) >= 0) {
		FUNC1(" supported\n");
	} else if (errno == ENOSYS) {
		FUNC1(" not supported\n");
	} else {
		FUNC1(" confused\n");
	}

	FUNC3();

	return nerrs ? 1 : 0;
}