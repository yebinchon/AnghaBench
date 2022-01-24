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
 scalar_t__ FUNC0 (char) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(char *p, char *header[2]) {
    if (FUNC0(*p) == 0) {
        return 0;
    }
    header[0] = p;
    while (*p != ':' && *p != 0) {
        p++;
    }
    if (*p != ':') {
        return 0;
    }
    *p++ = 0;
    header[1] = p = FUNC1(p);
    while (*p != ';' && *p != '\r' && *p != '\n' && *p != 0) {
        p++;
    }
    if (*p != 0) {
        *p++ = 0;
    }
    return p;
}