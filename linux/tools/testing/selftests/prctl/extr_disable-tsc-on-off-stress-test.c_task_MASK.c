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
 int /*<<< orphan*/  PR_TSC_SIGSEGV ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int should_segv ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigsegv_cb ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC7(void)
{
	FUNC6(SIGSEGV, sigsegv_cb);
	FUNC0(10);
	for(;;)
	{
		FUNC5();
		if (should_segv)
		{
			FUNC2(stderr, "FATAL ERROR, rdtsc() succeeded while disabled\n");
			FUNC1(0);
		}
		if (FUNC4(PR_SET_TSC, PR_TSC_SIGSEGV) < 0)
		{
			FUNC3("prctl");
			FUNC1(0);
		}
		should_segv = 1;
	}
}