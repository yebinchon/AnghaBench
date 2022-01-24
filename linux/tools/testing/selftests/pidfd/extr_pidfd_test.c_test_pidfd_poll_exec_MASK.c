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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int CHILD_THREAD_MIN_WAIT ; 
 int /*<<< orphan*/  CLONE_PIDFD ; 
 int /*<<< orphan*/  child_poll_exec_test ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(int use_waitpid)
{
	int pid, pidfd = 0;
	int status, ret;
	pthread_t t1;
	time_t prog_start = FUNC7(NULL);
	const char *test_name = "pidfd_poll check for premature notification on child thread exec";

	FUNC3("Parent: pid: %d\n", FUNC1());
	pid = FUNC5(CLONE_PIDFD, &pidfd, child_poll_exec_test);
	if (pid < 0)
		FUNC2("%s test: pidfd_clone failed (ret %d, errno %d)\n",
				   test_name, pid, errno);

	FUNC3("Parent: Waiting for Child (%d) to complete.\n", pid);

	if (use_waitpid) {
		ret = FUNC8(pid, &status, 0);
		if (ret == -1)
			FUNC3("Parent: error\n");

		if (ret == pid)
			FUNC3("Parent: Child process waited for.\n");
	} else {
		FUNC6(test_name, pidfd);
	}

	time_t prog_time = FUNC7(NULL) - prog_start;

	FUNC3("Time waited for child: %lu\n", prog_time);

	FUNC0(pidfd);

	if (prog_time < CHILD_THREAD_MIN_WAIT || prog_time > CHILD_THREAD_MIN_WAIT + 2)
		FUNC2("%s test: Failed\n", test_name);
	else
		FUNC4("%s test: Passed\n", test_name);
}