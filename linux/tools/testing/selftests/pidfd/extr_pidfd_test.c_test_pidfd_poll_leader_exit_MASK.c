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
typedef  int time_t ;

/* Variables and functions */
 int CHILD_THREAD_MIN_WAIT ; 
 int /*<<< orphan*/  CLONE_PIDFD ; 
 int MAP_ANONYMOUS ; 
 int* MAP_FAILED ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int* child_exit_secs ; 
 int /*<<< orphan*/  child_poll_leader_exit_test ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int* FUNC5 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(int use_waitpid)
{
	int pid, pidfd = 0;
	int status, ret;
	time_t prog_start = FUNC9(NULL);
	const char *test_name = "pidfd_poll check for premature notification on non-empty"
				"group leader exit";

	child_exit_secs = FUNC5(NULL, sizeof *child_exit_secs, PROT_READ | PROT_WRITE,
			MAP_SHARED | MAP_ANONYMOUS, -1, 0);

	if (child_exit_secs == MAP_FAILED)
		FUNC2("%s test: mmap failed (errno %d)\n",
				   test_name, errno);

	FUNC3("Parent: pid: %d\n", FUNC1());
	pid = FUNC6(CLONE_PIDFD, &pidfd, child_poll_leader_exit_test);
	if (pid < 0)
		FUNC2("%s test: pidfd_clone failed (ret %d, errno %d)\n",
				   test_name, pid, errno);

	FUNC3("Parent: Waiting for Child (%d) to complete.\n", pid);

	if (use_waitpid) {
		ret = FUNC10(pid, &status, 0);
		if (ret == -1)
			FUNC3("Parent: error\n");
	} else {
		/*
		 * This sleep tests for the case where if the child exits, and is in
		 * EXIT_ZOMBIE, but the thread group leader is non-empty, then the poll
		 * doesn't prematurely return even though there are active threads
		 */
		FUNC8(1);
		FUNC7(test_name, pidfd);
	}

	if (ret == pid)
		FUNC3("Parent: Child process waited for.\n");

	time_t since_child_exit = FUNC9(NULL) - *child_exit_secs;

	FUNC3("Time since child exit: %lu\n", since_child_exit);

	FUNC0(pidfd);

	if (since_child_exit < CHILD_THREAD_MIN_WAIT ||
			since_child_exit > CHILD_THREAD_MIN_WAIT + 2)
		FUNC2("%s test: Failed\n", test_name);
	else
		FUNC4("%s test: Passed\n", test_name);
}