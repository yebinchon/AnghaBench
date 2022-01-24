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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_NEWNS ; 
 int /*<<< orphan*/  CLONE_NEWPID ; 
 scalar_t__ ESRCH ; 
 int /*<<< orphan*/  MNT_DETACH ; 
 int MS_PRIVATE ; 
 int MS_REC ; 
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int PIDFD_ERROR ; 
#define  PIDFD_FAIL 131 
 int PIDFD_MAX_DEFAULT ; 
#define  PIDFD_PASS 130 
#define  PIDFD_SKIP 129 
#define  PIDFD_XFAIL 128 
 scalar_t__ PID_RECYCLE ; 
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int FUNC7 (char*,char*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,int) ; 
 int FUNC9 (int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,scalar_t__) ; 
 int FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (scalar_t__) ; 

__attribute__((used)) static int FUNC16(void)
{
	int i, ret;
	pid_t pid1;
	const char *test_name = "pidfd_send_signal signal recycled pid";

	ret = FUNC14(CLONE_NEWPID);
	if (ret < 0)
		FUNC4("%s test: Failed to unshare pid namespace\n",
				   test_name);

	ret = FUNC14(CLONE_NEWNS);
	if (ret < 0)
		FUNC4(
			"%s test: Failed to unshare mount namespace\n",
			test_name);

	ret = FUNC7(NULL, "/", NULL, MS_REC | MS_PRIVATE, 0);
	if (ret < 0)
		FUNC4("%s test: Failed to remount / private\n",
				   test_name);

	/* pid 1 in new pid namespace */
	pid1 = FUNC2();
	if (pid1 < 0)
		FUNC4("%s test: Failed to create new process\n",
				   test_name);

	if (pid1 == 0) {
		char buf[256];
		pid_t pid2;
		int pidfd = -1;

		(void)FUNC13("/proc", MNT_DETACH);
		ret = FUNC7("proc", "/proc", "proc", 0, NULL);
		if (ret < 0)
			FUNC0(PIDFD_ERROR);

		/* grab pid PID_RECYCLE */
		for (i = 0; i <= PIDFD_MAX_DEFAULT; i++) {
			pid2 = FUNC2();
			if (pid2 < 0)
				FUNC0(PIDFD_ERROR);

			if (pid2 == 0)
				FUNC0(PIDFD_PASS);

			if (pid2 == PID_RECYCLE) {
				FUNC11(buf, sizeof(buf), "/proc/%d", pid2);
				FUNC5("pid to recycle is %d\n", pid2);
				pidfd = FUNC8(buf, O_DIRECTORY | O_CLOEXEC);
			}

			if (FUNC15(pid2))
				FUNC0(PIDFD_ERROR);

			if (pid2 >= PID_RECYCLE)
				break;
		}

		/*
		 * We want to be as predictable as we can so if we haven't been
		 * able to grab pid PID_RECYCLE skip the test.
		 */
		if (pid2 != PID_RECYCLE) {
			/* skip test */
			FUNC1(pidfd);
			FUNC0(PIDFD_SKIP);
		}

		if (pidfd < 0)
			FUNC0(PIDFD_ERROR);

		for (i = 0; i <= PIDFD_MAX_DEFAULT; i++) {
			char c;
			int pipe_fds[2];
			pid_t recycled_pid;
			int child_ret = PIDFD_PASS;

			ret = FUNC9(pipe_fds, O_CLOEXEC);
			if (ret < 0)
				FUNC0(PIDFD_ERROR);

			recycled_pid = FUNC2();
			if (recycled_pid < 0)
				FUNC0(PIDFD_ERROR);

			if (recycled_pid == 0) {
				FUNC1(pipe_fds[1]);
				(void)FUNC10(pipe_fds[0], &c, 1);
				FUNC1(pipe_fds[0]);

				FUNC0(PIDFD_PASS);
			}

			/*
			 * Stop the child so we can inspect whether we have
			 * recycled pid PID_RECYCLE.
			 */
			FUNC1(pipe_fds[0]);
			ret = FUNC3(recycled_pid, SIGSTOP);
			FUNC1(pipe_fds[1]);
			if (ret) {
				(void)FUNC15(recycled_pid);
				FUNC0(PIDFD_ERROR);
			}

			/*
			 * We have recycled the pid. Try to signal it. This
			 * needs to fail since this is a different process than
			 * the one the pidfd refers to.
			 */
			if (recycled_pid == PID_RECYCLE) {
				ret = FUNC12(pidfd, SIGCONT,
							    NULL, 0);
				if (ret && errno == ESRCH)
					child_ret = PIDFD_XFAIL;
				else
					child_ret = PIDFD_FAIL;
			}

			/* let the process move on */
			ret = FUNC3(recycled_pid, SIGCONT);
			if (ret)
				(void)FUNC3(recycled_pid, SIGKILL);

			if (FUNC15(recycled_pid))
				FUNC0(PIDFD_ERROR);

			switch (child_ret) {
			case PIDFD_FAIL:
				/* fallthrough */
			case PIDFD_XFAIL:
				FUNC0(child_ret);
			case PIDFD_PASS:
				break;
			default:
				/* not reached */
				FUNC0(PIDFD_ERROR);
			}

			/*
			 * If the user set a custom pid_max limit we could be
			 * in the millions.
			 * Skip the test in this case.
			 */
			if (recycled_pid > PIDFD_MAX_DEFAULT)
				FUNC0(PIDFD_SKIP);
		}

		/* failed to recycle pid */
		FUNC0(PIDFD_SKIP);
	}

	ret = FUNC15(pid1);
	switch (ret) {
	case PIDFD_FAIL:
		FUNC4(
			"%s test: Managed to signal recycled pid %d\n",
			test_name, PID_RECYCLE);
	case PIDFD_PASS:
		FUNC4("%s test: Failed to recycle pid %d\n",
				   test_name, PID_RECYCLE);
	case PIDFD_SKIP:
		FUNC5("%s test: Skipping test\n", test_name);
		ret = 0;
		break;
	case PIDFD_XFAIL:
		FUNC6(
			"%s test: Failed to signal recycled pid as expected\n",
			test_name);
		ret = 0;
		break;
	default /* PIDFD_ERROR */:
		FUNC4("%s test: Error while running tests\n",
				   test_name);
	}

	return ret;
}