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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int const) ; 

const char *
FUNC2(const char *name, const char *envp[])
{
    if (envp)
    {
        int i;
        const int namelen = FUNC0(name);
        for (i = 0; envp[i]; ++i)
        {
            if (!FUNC1(envp[i], name, namelen))
            {
                const char *cp = envp[i] + namelen;
                if (*cp == '=')
                {
                    return cp + 1;
                }
            }
        }
    }
    return NULL;
}