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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int EIO ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,char*,scalar_t__) ; 

int FUNC5(char *buf, ssize_t buf_size)
{
	ssize_t num;
	int rc, fd;

	fd = FUNC1("/proc/self/auxv", O_RDONLY);
	if (fd == -1) {
		FUNC2("open");
		return -errno;
	}

	num = FUNC4(fd, buf, buf_size);
	if (num < 0) {
		FUNC2("read");
		rc = -EIO;
		goto out;
	}

	if (num > buf_size) {
		FUNC3("overflowed auxv buffer\n");
		rc = -EOVERFLOW;
		goto out;
	}

	rc = 0;
out:
	FUNC0(fd);
	return rc;
}