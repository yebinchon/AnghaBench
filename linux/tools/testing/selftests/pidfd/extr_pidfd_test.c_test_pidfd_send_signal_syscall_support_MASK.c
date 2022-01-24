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
 scalar_t__ ENOSYS ; 
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char*,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	int pidfd, ret;
	const char *test_name = "pidfd_send_signal check for support";

	pidfd = FUNC4("/proc/self", O_DIRECTORY | O_CLOEXEC);
	if (pidfd < 0)
		FUNC1(
			"%s test: Failed to open process file descriptor\n",
			test_name);

	ret = FUNC5(pidfd, 0, NULL, 0);
	if (ret < 0) {
		if (errno == ENOSYS)
			FUNC2(
				"%s test: pidfd_send_signal() syscall not supported\n",
				test_name);

		FUNC1("%s test: Failed to send signal\n",
				   test_name);
	}

	FUNC0(pidfd);
	FUNC3(
		"%s test: pidfd_send_signal() syscall is supported. Tests can be executed\n",
		test_name);
	return 0;
}