#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_4__ {int si_int; int /*<<< orphan*/  si_code; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_ATTACH ; 
 int /*<<< orphan*/  PTRACE_KILL ; 
 int SIGNR ; 
 int /*<<< orphan*/  SIGRTMIN ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  TEST_SICODE_PRIV ; 
 int /*<<< orphan*/  TEST_SICODE_SHARE ; 
 scalar_t__ FUNC0 (int,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC14(int argc, char *argv[])
{
	siginfo_t siginfo[SIGNR];
	int i, exit_code = 1;
	sigset_t blockmask;
	pid_t child;

	FUNC7(&blockmask);
	FUNC6(&blockmask, SIGRTMIN);
	FUNC8(SIG_BLOCK, &blockmask, NULL);

	child = FUNC3();
	if (child == -1) {
		FUNC2("fork() failed: %m");
		return 1;
	} else if (child == 0) {
		pid_t ppid = FUNC4();
		while (1) {
			if (ppid != FUNC4())
				break;
			FUNC9(1);
		}
		return 1;
	}

	/* Send signals in process-wide and per-thread queues */
	for (i = 0; i < SIGNR; i++) {
		siginfo->si_code = TEST_SICODE_SHARE;
		siginfo->si_int = i;
		FUNC11(child, SIGRTMIN, siginfo);

		siginfo->si_code = TEST_SICODE_PRIV;
		siginfo->si_int = i;
		FUNC12(child, child, SIGRTMIN, siginfo);
	}

	if (FUNC10(PTRACE_ATTACH, child, NULL, NULL) == -1)
		return 1;

	FUNC13(child, NULL, 0);

	/* Dump signals one by one*/
	if (FUNC0(child, 0, 1))
		goto out;
	/* Dump all signals for one call */
	if (FUNC0(child, 0, SIGNR))
		goto out;

	/*
	 * Dump signal from the process-wide queue.
	 * The number of signals is not multible to the buffer size
	 */
	if (FUNC0(child, 1, 3))
		goto out;

	if (FUNC1(child))
		goto out;

	FUNC5("PASS\n");
	exit_code = 0;
out:
	if (FUNC10(PTRACE_KILL, child, NULL, NULL) == -1)
		return 1;

	FUNC13(child, NULL, 0);

	return exit_code;
}