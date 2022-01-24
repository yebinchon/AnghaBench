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
 scalar_t__ FUNC0 (char) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(char *path)
{
	char	   *p;

	path = FUNC1(path);

	if (path[0] == '\0')
		return;

	/* back up over trailing slash(es) */
	for (p = path + FUNC2(path) - 1; FUNC0(*p) && p > path; p--)
		;
	/* back up over directory name */
	for (; !FUNC0(*p) && p > path; p--)
		;
	/* if multiple slashes before directory name, remove 'em all */
	for (; p > path && FUNC0(*(p - 1)); p--)
		;
	/* don't erase a leading slash */
	if (p == path && FUNC0(*p))
		p++;
	*p = '\0';
}