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
 size_t PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int FUNC1 (char*,size_t,char*,char*) ; 

size_t FUNC2(const char *path, char *abspath, size_t size)
{
	size_t min_size = size < PATH_MAX ? size : PATH_MAX;
	char newpath[PATH_MAX];
	int ret;

	if (!abspath)
		return 0;

	if (!FUNC0(path, newpath))
		return 0;

	ret = FUNC1(abspath, min_size, "%s", newpath);
	return ret >= 0 ? ret : 0;
}