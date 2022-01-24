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
 int EXTRASIZE ; 
 char** environ ; 
 int envsize ; 
 scalar_t__ FUNC0 (char*,int) ; 

__attribute__((used)) static int
FUNC1()
{
    int	    esize;
    char    **env;

    esize = envsize + EXTRASIZE;
    env = (char **)FUNC0((char *)environ, esize * sizeof (*env));
    if (env == 0)
	return -1;
    environ = env;
    envsize = esize;
    return 0;
}