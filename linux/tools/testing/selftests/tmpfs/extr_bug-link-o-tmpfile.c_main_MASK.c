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
 int /*<<< orphan*/  AT_EMPTY_PATH ; 
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  CLONE_NEWNS ; 
 scalar_t__ ENOSYS ; 
 scalar_t__ EPERM ; 
 int MS_PRIVATE ; 
 int MS_REC ; 
 int O_TMPFILE ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC2 (int,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(void)
{
	int fd;

	if (FUNC5(CLONE_NEWNS) == -1) {
		if (errno == ENOSYS || errno == EPERM) {
			FUNC1(stderr, "error: unshare, errno %ld\n", errno);
			return 4;
		}
		FUNC1(stderr, "error: unshare, errno %ld\n", errno);
		return 1;
	}
	if (FUNC3(NULL, "/", NULL, MS_PRIVATE|MS_REC, NULL) == -1) {
		FUNC1(stderr, "error: mount '/', errno %ld\n", errno);
		return 1;
	}

	/* Our heroes: 1 root inode, 1 O_TMPFILE inode, 1 permanent inode. */
	if (FUNC3(NULL, "/tmp", "tmpfs", 0, "nr_inodes=3") == -1) {
		FUNC1(stderr, "error: mount tmpfs, errno %ld\n", errno);
		return 1;
	}

	fd = FUNC4(AT_FDCWD, "/tmp", O_WRONLY|O_TMPFILE, 0600);
	if (fd == -1) {
		FUNC1(stderr, "error: open 1, errno %ld\n", errno);
		return 1;
	}
	if (FUNC2(fd, "", AT_FDCWD, "/tmp/1", AT_EMPTY_PATH) == -1) {
		FUNC1(stderr, "error: linkat, errno %ld\n", errno);
		return 1;
	}
	FUNC0(fd);

	fd = FUNC4(AT_FDCWD, "/tmp", O_WRONLY|O_TMPFILE, 0600);
	if (fd == -1) {
		FUNC1(stderr, "error: open 2, errno %ld\n", errno);
		return 1;
	}

	return 0;
}