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
typedef  unsigned long long uint64_t ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char) ; 
 unsigned long long FUNC2 (char const*,char**,int) ; 
 scalar_t__ FUNC3 (char) ; 

bool FUNC4(const char *str, uint64_t *out) {
    FUNC0(out != NULL);
    errno = 0;
    *out = 0;
    char *endptr;
    unsigned long long ull = FUNC2(str, &endptr, 10);
    if ((errno == ERANGE) || (str == endptr)) {
        return false;
    }

    if (FUNC3(*endptr) || (*endptr == '\0' && endptr != str)) {
        if ((long long) ull < 0) {
            /* only check for negative signs in the uncommon case when
             * the unsigned number is so big that it's negative as a
             * signed number. */
            if (FUNC1(str, '-') != NULL) {
                return false;
            }
        }
        *out = ull;
        return true;
    }
    return false;
}