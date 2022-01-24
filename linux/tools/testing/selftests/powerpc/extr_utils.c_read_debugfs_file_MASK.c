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
typedef  int /*<<< orphan*/  value ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

int FUNC7(char *debugfs_file, int *result)
{
	int rc = -1, fd;
	char path[PATH_MAX];
	char value[16];

	FUNC4(path, "/sys/kernel/debug/");
	FUNC6(path, debugfs_file, PATH_MAX - FUNC5(path) - 1);

	if ((fd = FUNC2(path, O_RDONLY)) < 0)
		return rc;

	if ((rc = FUNC3(fd, value, sizeof(value))) < 0)
		return rc;

	value[15] = 0;
	*result = FUNC0(value);
	FUNC1(fd);

	return 0;
}