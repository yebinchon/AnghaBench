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
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4() /* {{{ */
{
	int fd = FUNC2("/dev/null", O_RDWR);

	if (0 > fd) {
		FUNC3(ZLOG_SYSERROR, "failed to init stdio: open(\"/dev/null\")");
		return -1;
	}

	if (0 > FUNC1(fd, STDIN_FILENO) || 0 > FUNC1(fd, STDOUT_FILENO)) {
		FUNC3(ZLOG_SYSERROR, "failed to init stdio: dup2()");
		FUNC0(fd);
		return -1;
	}
	FUNC0(fd);
	return 0;
}