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
 int /*<<< orphan*/  O_WRONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (int,char*,int) ; 

int FUNC7(char *debugfs_file, int result)
{
	int rc = -1, fd;
	char path[PATH_MAX];
	char value[16];

	FUNC3(path, "/sys/kernel/debug/");
	FUNC5(path, debugfs_file, PATH_MAX - FUNC4(path) - 1);

	if ((fd = FUNC1(path, O_WRONLY)) < 0)
		return rc;

	FUNC2(value, 16, "%d", result);

	if ((rc = FUNC6(fd, value, FUNC4(value))) < 0)
		return rc;

	FUNC0(fd);

	return 0;
}