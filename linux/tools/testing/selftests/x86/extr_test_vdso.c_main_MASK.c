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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ nerrs ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(int argc, char **argv)
{
	FUNC0();

	FUNC1();
	FUNC3();

	/*
	 * Test getcpu() last so that, if something goes wrong setting affinity,
	 * we still run the other tests.
	 */
	FUNC2();

	return nerrs ? 1 : 0;
}