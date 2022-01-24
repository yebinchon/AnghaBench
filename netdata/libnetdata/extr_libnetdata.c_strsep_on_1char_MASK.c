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
 scalar_t__ FUNC0 (int) ; 

char *FUNC1(char **ptr, char c) {
    if(FUNC0(!ptr || !*ptr))
        return NULL;

    // remember the position we started
    char *s = *ptr;

    // skip separators in front
    while(*s == c) s++;
    char *ret = s;

    // find the next separator
    while(*s++) {
        if(FUNC0(*s == c)) {
            *s++ = '\0';
            *ptr = s;
            return ret;
        }
    }

    *ptr = NULL;
    return ret;
}