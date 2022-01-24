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
typedef  int ssize_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_NEWPID ; 
 scalar_t__ ENOSYS ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ errno ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC8(void)
{
	pid_t pid;
	int wstatus;

	if (FUNC6(CLONE_NEWPID) == -1) {
		if (errno == ENOSYS || errno == EPERM)
			return 4;
		return 1;
	}

	pid = FUNC2();
	if (pid == -1)
		return 1;
	if (pid == 0) {
		char buf[128], *p;
		int fd;
		ssize_t rv;

		fd = FUNC4("/proc/loadavg" , O_RDONLY);
		if (fd == -1)
			return 1;
		rv = FUNC5(fd, buf, sizeof(buf));
		if (rv < 3)
			return 1;
		p = buf + rv;

		/* pid 1 */
		if (!(p[-3] == ' ' && p[-2] == '1' && p[-1] == '\n'))
			return 1;

		pid = FUNC2();
		if (pid == -1)
			return 1;
		if (pid == 0)
			return 0;
		if (FUNC7(pid, NULL, 0) == -1)
			return 1;

		FUNC3(fd, 0, SEEK_SET);
		rv = FUNC5(fd, buf, sizeof(buf));
		if (rv < 3)
			return 1;
		p = buf + rv;

		/* pid 2 */
		if (!(p[-3] == ' ' && p[-2] == '2' && p[-1] == '\n'))
			return 1;

		return 0;
	}

	if (FUNC7(pid, &wstatus, 0) == -1)
		return 1;
	if (FUNC1(wstatus) && FUNC0(wstatus) == 0)
		return 0;
	return 1;
}