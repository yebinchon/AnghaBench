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
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 

bool
FUNC3(const char *path1, const char *path2)
{
	int			path1_len = FUNC1(path1);

	if (FUNC2(path1, path2, path1_len) == 0 &&
		(FUNC0(path2[path1_len]) || path2[path1_len] == '\0'))
		return true;
	return false;
}