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
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  set_signal_received_on_sigusr1 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int signal_received ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	int pidfd, ret;
	const char *test_name = "pidfd_send_signal send SIGUSR1";

	pidfd = FUNC3("/proc/self", O_DIRECTORY | O_CLOEXEC);
	if (pidfd < 0)
		FUNC1(
			"%s test: Failed to open process file descriptor\n",
			test_name);

	FUNC4(SIGUSR1, set_signal_received_on_sigusr1);

	ret = FUNC5(pidfd, SIGUSR1, NULL, 0);
	FUNC0(pidfd);
	if (ret < 0)
		FUNC1("%s test: Failed to send signal\n",
				   test_name);

	if (signal_received != 1)
		FUNC1("%s test: Failed to receive signal\n",
				   test_name);

	signal_received = 0;
	FUNC2("%s test: Sent signal\n", test_name);
	return 0;
}