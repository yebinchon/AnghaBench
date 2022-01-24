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
 int FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(char *name)
{
    char *p, c;
    if (!name)
        return NULL;
    /* Look for first non white space or quote */
    for (p = name + FUNC1(name) - 1; p >= name; p--) {
        c = *p;
        if (c == '"') {
            if (p - 1 == name)
                return NULL;
            *p = 0;
            return name;
        }
        if (FUNC0(c))
            *p = 0;
        else
            return name;
    }
    return NULL;
}