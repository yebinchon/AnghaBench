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
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 char NUL ; 
 char FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (char*) ; 
 int p_verbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(char *path)
{
    if (path[0] == NUL)		    /* just checking... */
	return 0;
    if (p_verbose >= 5)
    {
	FUNC4();
	FUNC3((char_u *)"chdir(%s)", path);
	FUNC5();
    }
    if (path[1] == ':')		    /* has a drive name */
    {
	if (FUNC1(FUNC0(path[0]) - 'a' + 1))
	    return -1;		    /* invalid drive name */
	path += 2;
    }
    if (*path == NUL)		    /* drive name only */
	return 0;
    return FUNC2(path);		    /* let the normal chdir() do the rest */
}