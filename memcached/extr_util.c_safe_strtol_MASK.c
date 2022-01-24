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
typedef  long int32_t ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 long FUNC1 (char const*,char**,int) ; 
 scalar_t__ FUNC2 (char) ; 

bool FUNC3(const char *str, int32_t *out) {
    FUNC0(out != NULL);
    errno = 0;
    *out = 0;
    char *endptr;
    long l = FUNC1(str, &endptr, 10);
    if ((errno == ERANGE) || (str == endptr)) {
        return false;
    }

    if (FUNC2(*endptr) || (*endptr == '\0' && endptr != str)) {
        *out = l;
        return true;
    }
    return false;
}