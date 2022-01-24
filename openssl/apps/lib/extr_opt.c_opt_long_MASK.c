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
 long LONG_MAX ; 
 long LONG_MIN ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

int FUNC2(const char *value, long *result)
{
    int oerrno = errno;
    long l;
    char *endp;

    errno = 0;
    l = FUNC1(value, &endp, 0);
    if (*endp
            || endp == value
            || ((l == LONG_MAX || l == LONG_MIN) && errno == ERANGE)
            || (l == 0 && errno != 0)) {
        FUNC0(value);
        errno = oerrno;
        return 0;
    }
    *result = l;
    errno = oerrno;
    return 1;
}