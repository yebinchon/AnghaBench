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
 int /*<<< orphan*/  PR_SET_TSC ; 
 int /*<<< orphan*/  PR_TSC_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ should_segv ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(int sig)
{
	if (!should_segv)
	{
		FUNC1(stderr, "FATAL ERROR, rdtsc() failed while enabled\n");
		FUNC0(0);
	}
	if (FUNC3(PR_SET_TSC, PR_TSC_ENABLE) < 0)
	{
		FUNC2("prctl");
		FUNC0(0);
	}
	should_segv = 0;

	FUNC4();
}