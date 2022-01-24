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
 int ESRCH ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,scalar_t__) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(void)
{
	int pidfd, ret, saved_errno;
	char buf[256];
	pid_t pid;
	const char *test_name = "pidfd_send_signal signal exited process";

	pid = FUNC2();
	if (pid < 0)
		FUNC3("%s test: Failed to create new process\n",
				   test_name);

	if (pid == 0)
		FUNC0(EXIT_SUCCESS);

	FUNC6(buf, sizeof(buf), "/proc/%d", pid);

	pidfd = FUNC5(buf, O_DIRECTORY | O_CLOEXEC);

	(void)FUNC8(pid);

	if (pidfd < 0)
		FUNC3(
			"%s test: Failed to open process file descriptor\n",
			test_name);

	ret = FUNC7(pidfd, 0, NULL, 0);
	saved_errno = errno;
	FUNC1(pidfd);
	if (ret == 0)
		FUNC3(
			"%s test: Managed to send signal to process even though it should have failed\n",
			test_name);

	if (saved_errno != ESRCH)
		FUNC3(
			"%s test: Expected to receive ESRCH as errno value but received %d instead\n",
			test_name, saved_errno);

	FUNC4("%s test: Failed to send signal as expected\n",
			      test_name);
	return 0;
}