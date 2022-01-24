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
 int MAXPGPATH ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 scalar_t__ FUNC3 (char*) ; 

int
FUNC4(const char *fname)
{
	char		parentpath[MAXPGPATH];

	FUNC2(parentpath, fname, MAXPGPATH);
	FUNC1(parentpath);

	/*
	 * get_parent_directory() returns an empty string if the input argument is
	 * just a file name (see comments in path.c), so handle that as being the
	 * current directory.
	 */
	if (FUNC3(parentpath) == 0)
		FUNC2(parentpath, ".", MAXPGPATH);

	if (FUNC0(parentpath, true) != 0)
		return -1;

	return 0;
}