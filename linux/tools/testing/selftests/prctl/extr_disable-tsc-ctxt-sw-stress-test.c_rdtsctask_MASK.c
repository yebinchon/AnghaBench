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
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigsegv_fail ; 

__attribute__((used)) static void FUNC6(void)
{
	if (FUNC3(PR_SET_TSC, PR_TSC_ENABLE) < 0)
	{
		FUNC2("prctl");
		FUNC1(0);
	}
	FUNC5(SIGSEGV, sigsegv_fail);
	FUNC0(10);
	for(;;) FUNC4();
}