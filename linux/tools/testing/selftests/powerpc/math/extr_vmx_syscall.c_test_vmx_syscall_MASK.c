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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC5(void)
{
	/*
	 * Setup an environment with much context switching
	 */
	pid_t pid2;
	pid_t pid = FUNC2();
	int ret;
	int child_ret;
	FUNC0(pid == -1);

	pid2 = FUNC2();
	ret = FUNC3();
	/* Can't FAIL_IF(pid2 == -1); because we've already forked */
	if (pid2 == -1) {
		/*
		 * Couldn't fork, ensure child_ret is set and is a fail
		 */
		ret = child_ret = 1;
	} else {
		if (pid2)
			FUNC4(pid2, &child_ret, 0);
		else
			FUNC1(ret);
	}

	ret |= child_ret;

	if (pid)
		FUNC4(pid, &child_ret, 0);
	else
		FUNC1(ret);

	FUNC0(ret || child_ret);
	return 0;
}