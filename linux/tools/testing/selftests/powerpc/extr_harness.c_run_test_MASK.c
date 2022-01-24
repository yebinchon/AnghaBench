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
 scalar_t__ EINTR ; 
 int KILL_TIMEOUT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGTERM ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  stdout ; 
 int timeout ; 
 int FUNC12 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC13(int (test_function)(void), char *name)
{
	bool terminated;
	int rc, status;
	pid_t pid;

	/* Make sure output is flushed before forking */
	FUNC6(stdout);

	pid = FUNC7();
	if (pid == 0) {
		FUNC11(0, 0);
		FUNC5(test_function());
	} else if (pid == -1) {
		FUNC9("fork");
		return 1;
	}

	FUNC11(pid, pid);

	if (timeout != -1)
		/* Wake us up in timeout seconds */
		FUNC4(timeout);
	terminated = false;

wait:
	rc = FUNC12(pid, &status, 0);
	if (rc == -1) {
		if (errno != EINTR) {
			FUNC10("unknown error from waitpid\n");
			return 1;
		}

		if (terminated) {
			FUNC10("!! force killing %s\n", name);
			FUNC8(-pid, SIGKILL);
			return 1;
		} else {
			FUNC10("!! killing %s\n", name);
			FUNC8(-pid, SIGTERM);
			terminated = true;
			FUNC4(KILL_TIMEOUT);
			goto wait;
		}
	}

	/* Kill anything else in the process group that is still running */
	FUNC8(-pid, SIGTERM);

	if (FUNC1(status))
		status = FUNC0(status);
	else {
		if (FUNC2(status))
			FUNC10("!! child died by signal %d\n", FUNC3(status));
		else
			FUNC10("!! child died by unknown cause\n");

		status = 1; /* Signal or other */
	}

	return status;
}