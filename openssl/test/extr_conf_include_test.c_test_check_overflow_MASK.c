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
 int /*<<< orphan*/  LONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
#if defined(_BSD_SOURCE) \
        || (defined(_POSIX_C_SOURCE) && _POSIX_C_SOURCE >= 200112L) \
        || (defined(_XOPEN_SOURCE) && _XOPEN_SOURCE >= 600)
    long val = 0;
    char max[(sizeof(long) * 8) / 3 + 3];
    char *p;

    p = max + sprintf(max, "0%ld", LONG_MAX) - 1;
    setenv("FNORD", max, 1);
    if (!TEST_true(NCONF_get_number(NULL, "missing", "FNORD", &val))
            || !TEST_long_eq(val, LONG_MAX))
        return 0;

    while (++*p > '9')
        *p-- = '0';

    setenv("FNORD", max, 1);
    if (!TEST_false(NCONF_get_number(NULL, "missing", "FNORD", &val)))
        return 0;
#endif
    return 1;
}