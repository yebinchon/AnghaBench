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
 char* FUNC1 (char const*,char) ; 

__attribute__((used)) static void
FUNC2(const char *path, char **dir, char **fname)
{
	char	   *sep;

	/* split filepath into directory & filename */
	sep = FUNC1(path, '/');

	/* directory path */
	if (sep != NULL)
	{
		*dir = FUNC0(path);
		(*dir)[(sep - path) + 1] = '\0';	/* no strndup */
		*fname = FUNC0(sep + 1);
	}
	/* local directory */
	else
	{
		*dir = NULL;
		*fname = FUNC0(path);
	}
}