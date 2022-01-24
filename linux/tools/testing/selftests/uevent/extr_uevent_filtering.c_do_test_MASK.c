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
typedef  int /*<<< orphan*/  wait_val ;
typedef  int /*<<< orphan*/  uint64_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 unsigned long CLONE_NEWNET ; 
 unsigned long CLONE_NEWUSER ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (scalar_t__) ; 
 int FUNC11 (int) ; 
 scalar_t__ FUNC12 (unsigned long,int,int) ; 
 int FUNC13 (unsigned long) ; 
 int FUNC14 (scalar_t__) ; 

__attribute__((used)) static int FUNC15(unsigned long pre_flags, unsigned long post_flags,
		   bool expect_uevent, int sync_fd)
{
	int ret;
	uint64_t wait_val;
	pid_t pid;
	sigset_t mask;
	sigset_t orig_mask;
	struct timespec timeout;

	FUNC7(&mask);
	FUNC6(&mask, SIGCHLD);

	ret = FUNC8(SIG_BLOCK, &mask, &orig_mask);
	if (ret < 0) {
		FUNC2(stderr, "%s- Failed to block SIGCHLD\n", FUNC10(errno));
		return -1;
	}

	pid = FUNC1();
	if (pid < 0) {
		FUNC2(stderr, "%s - Failed to fork() new process\n", FUNC10(errno));
		return -1;
	}

	if (pid == 0) {
		/* Make sure that we go away when our parent dies. */
		ret = FUNC5();
		if (ret < 0) {
			FUNC2(stderr, "Failed to set PR_SET_PDEATHSIG to SIGKILL\n");
			FUNC0(EXIT_FAILURE);
		}

		if (pre_flags & CLONE_NEWUSER) {
			ret = FUNC13(CLONE_NEWUSER);
			if (ret < 0) {
				FUNC2(stderr,
					"%s - Failed to unshare user namespace\n",
					FUNC10(errno));
				FUNC0(EXIT_FAILURE);
			}
		}

		if (pre_flags & CLONE_NEWNET) {
			ret = FUNC13(CLONE_NEWNET);
			if (ret < 0) {
				FUNC2(stderr,
					"%s - Failed to unshare network namespace\n",
					FUNC10(errno));
				FUNC0(EXIT_FAILURE);
			}
		}

		if (FUNC12(post_flags, expect_uevent, sync_fd) < 0)
			FUNC0(EXIT_FAILURE);

		FUNC0(EXIT_SUCCESS);
	}

	ret = FUNC4(sync_fd, &wait_val, sizeof(wait_val));
	if (ret != sizeof(wait_val)) {
		FUNC2(stderr, "Failed to synchronize with child process\n");
		FUNC0(EXIT_FAILURE);
	}

	/* Trigger 10 uevents to account for the case where the kernel might
	 * drop some.
	 */
	ret = FUNC11(10);
	if (ret < 0)
		FUNC2(stderr, "Failed triggering uevents\n");

	/* Wait for 2 seconds before considering this failed. This should be
	 * plenty of time for the kernel to deliver the uevent even under heavy
	 * load.
	 */
	timeout.tv_sec = 2;
	timeout.tv_nsec = 0;

again:
	ret = FUNC9(&mask, NULL, &timeout);
	if (ret < 0) {
		if (errno == EINTR)
			goto again;

		if (!expect_uevent)
			ret = FUNC3(pid, SIGTERM); /* success */
		else
			ret = FUNC3(pid, SIGUSR1); /* error */
		if (ret < 0)
			return -1;
	}

	ret = FUNC14(pid);
	if (ret < 0)
		return -1;

	return ret;
}