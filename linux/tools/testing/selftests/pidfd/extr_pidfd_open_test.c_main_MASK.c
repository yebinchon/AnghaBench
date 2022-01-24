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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int) ; 

int FUNC10(int argc, char **argv)
{
	int pidfd = -1, ret = 1;
	pid_t pid;

	FUNC6(3);

	pidfd = FUNC9(-1, 0);
	if (pidfd >= 0) {
		FUNC5(
			"%s - succeeded to open pidfd for invalid pid -1\n",
			FUNC8(errno));
		goto on_error;
	}
	FUNC7("do not allow invalid pid test: passed\n");

	pidfd = FUNC9(FUNC2(), 1);
	if (pidfd >= 0) {
		FUNC5(
			"%s - succeeded to open pidfd with invalid flag value specified\n",
			FUNC8(errno));
		goto on_error;
	}
	FUNC7("do not allow invalid flag test: passed\n");

	pidfd = FUNC9(FUNC2(), 0);
	if (pidfd < 0) {
		FUNC5("%s - failed to open pidfd\n", FUNC8(errno));
		goto on_error;
	}
	FUNC7("open a new pidfd test: passed\n");

	pid = FUNC1(pidfd, "Pid:", sizeof("Pid:") - 1);
	FUNC5("pidfd %d refers to process with pid %d\n", pidfd, pid);

	ret = 0;

on_error:
	if (pidfd >= 0)
		FUNC0(pidfd);

	return !ret ? FUNC4() : FUNC3();
}