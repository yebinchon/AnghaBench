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
 int /*<<< orphan*/  SIGSEGV ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_segv ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6()
{
	int pid;

	FUNC0(!FUNC3());

	pid = FUNC2();
	if (pid < 0)
		FUNC1(1);

	if (pid) { /* Parent */
		/*
		 * It's likely the whole machine will crash here so if
		 * the child ever exits, we are good.
		 */
		FUNC5(NULL);
		return 0;
	}

	/*
	 * The flow here is:
	 * 1) register a signal handler (so signal delievery occurs)
	 * 2) make stack pointer (r1) = NULL
	 * 3) start transaction
	 * 4) cause segv
	 */
	if (FUNC4(SIGSEGV, signal_segv) == SIG_ERR)
		FUNC1(1);
	asm volatile("li 1, 0 ;"		/* stack ptr == NULL */
		     "1:"
		     "tbegin.;"
		     "beq 1b ;"			/* retry forever */
		     "tsuspend.;"
		     "ld 2, 0(1) ;"		/* trigger segv" */
		     : : : "memory");

	/* This should never get here due to above segv */
	return 1;
}