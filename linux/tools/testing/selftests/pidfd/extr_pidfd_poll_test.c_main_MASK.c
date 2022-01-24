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
struct pollfd {int events; int fd; int revents; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int POLLIN ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGKILL ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  handle_alarm ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (struct pollfd*,int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (scalar_t__) ; 
 int FUNC13 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ timeout ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC16(int argc, char **argv)
{
	struct pollfd fds;
	int iter, nevents;
	int nr_iterations = 10000;

	fds.events = POLLIN;

	if (argc > 2)
		FUNC5("Unexpected command line argument\n");

	if (argc == 2) {
		nr_iterations = FUNC1(argv[1]);
		if (nr_iterations <= 0)
			FUNC5("invalid input parameter %s\n",
					argv[1]);
	}

	FUNC7("running pidfd poll test for %d iterations\n",
		nr_iterations);

	for (iter = 0; iter < nr_iterations; iter++) {
		int pidfd;
		int child_pid = FUNC4();

		if (child_pid < 0) {
			if (errno == EAGAIN) {
				iter--;
				continue;
			}
			FUNC5(
				"%s - failed to fork a child process\n",
				FUNC12(errno));
		}

		if (child_pid == 0) {
			/* Child process just sleeps for a min and exits */
			FUNC11(60);
			FUNC3(EXIT_SUCCESS);
		}

		/* Parent kills the child and waits for its death */
		pidfd = FUNC13(child_pid, 0);
		if (pidfd < 0)
			FUNC5("%s - pidfd_open failed\n",
					FUNC12(errno));

		/* Setup 3 sec alarm - plenty of time */
		if (FUNC10(SIGALRM, handle_alarm) == SIG_ERR)
			FUNC5("%s - signal failed\n",
					FUNC12(errno));
		FUNC0(3);

		/* Send SIGKILL to the child */
		if (FUNC14(pidfd, SIGKILL, NULL, 0))
			FUNC5("%s - pidfd_send_signal failed\n",
					FUNC12(errno));

		/* Wait for the death notification */
		fds.fd = pidfd;
		nevents = FUNC9(&fds, 1, -1);

		/* Check for error conditions */
		if (nevents < 0)
			FUNC5("%s - poll failed\n",
					FUNC12(errno));

		if (nevents != 1)
			FUNC5("unexpected poll result: %d\n",
					nevents);

		if (!(fds.revents & POLLIN))
			FUNC5(
				"unexpected event type received: 0x%x\n",
				fds.revents);

		if (timeout)
			FUNC5(
				"death notification wait timeout\n");

		FUNC2(pidfd);
		/* Wait for child to prevent zombies */
		if (FUNC15(child_pid, NULL, 0) < 0)
			FUNC5("%s - waitpid failed\n",
					FUNC12(errno));

	}

	FUNC8("pidfd poll test: pass\n");
	return FUNC6();
}