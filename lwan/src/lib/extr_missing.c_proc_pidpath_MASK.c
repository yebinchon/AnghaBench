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
typedef  size_t ssize_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_EXECFN ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EOVERFLOW ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*,size_t) ; 
 size_t FUNC3 (char*,void*,size_t) ; 
 size_t FUNC4 (char const*) ; 

int FUNC5(pid_t pid, void *buffer, size_t buffersize)
{
    ssize_t path_len;

    if (FUNC1() != pid) {
        errno = EACCES;

        return -1;
    }

#if defined(HAVE_GETAUXVAL)
    const char *execfn = (const char *)getauxval(AT_EXECFN);

    if (execfn) {
        size_t len = strlen(execfn);

        if (len + 1 < buffersize) {
            memcpy(buffer, execfn, len + 1);

            return 0;
        }
    }
#endif

    path_len = FUNC3("/proc/self/exe", buffer, buffersize);
    if (path_len < 0)
        return -1;

    if (path_len < (ssize_t)buffersize) {
        ((char *)buffer)[path_len] = '\0';

        return 0;
    }

    errno = EOVERFLOW;
    return -1;
}