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
 scalar_t__ EACCES ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOENT ; 
 scalar_t__ EPERM ; 
 int PATH_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC0 (char*,int) ; 
 char* FUNC1 (char*,char const*,char,int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(const char *p, char *final, int max_len)
{
    char resolved_path[PATH_MAX+1];
    int len = 0;
    char *end;
    if (*p != '/')
    {
        if (FUNC0(final, max_len) == NULL)
            return -1;
        len = FUNC3(final);
        *(final + len) = '/';
        ++len;
    }
    end = FUNC1(&final[len], p, '\0', PATH_MAX - len);
    if (!end)
    {
        errno = EINVAL;
        return -1;
    }
    p = final;
    if (FUNC2(p, resolved_path) == NULL
        && errno != ENOENT && errno != EACCES)
        return -1;
    if (FUNC4(resolved_path, "/etc/", 5) == 0)
    {
        errno = EPERM;
        return -1;
    }
    return 0;
}