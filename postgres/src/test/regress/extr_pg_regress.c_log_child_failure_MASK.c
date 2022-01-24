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
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static void
FUNC7(int exitstatus)
{
	if (FUNC1(exitstatus))
		FUNC6(FUNC4(" (test process exited with exit code %d)"),
			   FUNC0(exitstatus));
	else if (FUNC2(exitstatus))
	{
#if defined(WIN32)
		status(_(" (test process was terminated by exception 0x%X)"),
			   WTERMSIG(exitstatus));
#else
		FUNC6(FUNC4(" (test process was terminated by signal %d: %s)"),
			   FUNC3(exitstatus), FUNC5(FUNC3(exitstatus)));
#endif
	}
	else
		FUNC6(FUNC4(" (test process exited with unrecognized status %d)"),
			   exitstatus);
}