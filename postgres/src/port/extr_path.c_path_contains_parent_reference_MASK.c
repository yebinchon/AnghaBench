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
 char* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 

bool
FUNC5(const char *path)
{
	int			path_len;

	path = FUNC0(path);	/* C: shouldn't affect our conclusion */

	path_len = FUNC2(path);

	/*
	 * ".." could be the whole path; otherwise, if it's present it must be at
	 * the beginning, in the middle, or at the end.
	 */
	if (FUNC1(path, "..") == 0 ||
		FUNC3(path, "../", 3) == 0 ||
		FUNC4(path, "/../") != NULL ||
		(path_len >= 3 && FUNC1(path + path_len - 3, "/..") == 0))
		return true;

	return false;
}