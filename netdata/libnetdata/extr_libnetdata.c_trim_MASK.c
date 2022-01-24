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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char*) ; 

char *FUNC2(char *s) {
    // skip leading spaces
    while (*s && FUNC0(*s)) s++;
    if (!*s) return NULL;

    // skip tailing spaces
    // this way is way faster. Writes only one NUL char.
    ssize_t l = FUNC1(s);
    if (--l >= 0) {
        char *p = s + l;
        while (p > s && FUNC0(*p)) p--;
        *++p = '\0';
    }

    if (!*s) return NULL;

    return s;
}