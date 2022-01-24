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
 int FUNC0 (char const) ; 

__attribute__((used)) static int
FUNC1(const char* s1, const char* s2, size_t len)
{
    while (len > 0 && *s1 != '\0' && *s2 != '\0') {
        int diff = FUNC0(*s1) - FUNC0(*s2);
        if (diff != 0) {
            return diff;
        }
        ++s1;
        ++s2;
        --len;
    }
    if (len > 0) {
        return *s1 - *s2;
    }
    return 0;
}