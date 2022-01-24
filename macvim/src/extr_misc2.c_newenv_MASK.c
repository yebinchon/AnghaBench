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
typedef  int /*<<< orphan*/  elem ;

/* Variables and functions */
 int EXTRASIZE ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 char** environ ; 
 int envsize ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3()
{
    char    **env, *elem;
    int	    i, esize;

#ifdef MACOS
    /* for Mac a new, empty environment is created */
    i = 0;
#else
    for (i = 0; environ[i]; i++)
	;
#endif
    esize = i + EXTRASIZE + 1;
    env = (char **)FUNC0((unsigned)(esize * sizeof (elem)));
    if (env == NULL)
	return -1;

#ifndef MACOS
    for (i = 0; environ[i]; i++)
    {
	elem = (char *)FUNC0((unsigned)(FUNC2(environ[i]) + 1));
	if (elem == NULL)
	    return -1;
	env[i] = elem;
	FUNC1(elem, environ[i]);
    }
#endif

    env[i] = 0;
    environ = env;
    envsize = esize;
    return 0;
}