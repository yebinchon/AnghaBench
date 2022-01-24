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
 int ERANGE ; 
 unsigned long ULONG_MAX ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 unsigned long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

int FUNC2(const char *value, unsigned long *result)
{
    int oerrno = errno;
    char *endptr;
    unsigned long l;

    errno = 0;
    l = FUNC1(value, &endptr, 0);
    if (*endptr
            || endptr == value
            || ((l == ULONG_MAX) && errno == ERANGE)
            || (l == 0 && errno != 0)) {
        FUNC0(value);
        errno = oerrno;
        return 0;
    }
    *result = l;
    errno = oerrno;
    return 1;
}