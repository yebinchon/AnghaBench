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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char const) ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4(const char *sep)
{
    int skip_space = 0;
    char *s, *start;

    s = start = FUNC2(FUNC3(sep)+3);
    if (s == NULL) {
        FUNC0();
        return NULL;
    }
    /* add space to front if there isn't one */
    if (*sep != '\0' && !FUNC1(*sep)) {
        *s = ' '; s++;
    }
    while (*sep != '\0') {
        if (FUNC1(*sep)) {
            if (skip_space) {
                sep++;
            }
            else {
                *s = ' ';
                s++;
                sep++;
                skip_space = 1;
            }
        }
        else {
            *s = *sep;
            s++;
            sep++;
            skip_space = 0;
        }
    }
    /* add space to end if there isn't one */
    if (s != start && s[-1] == ' ') {
        *s = ' ';
        s++;
    }
    *s = '\0';
    return start;
}