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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static char *FUNC4(const char *string) {
    char *buffer = FUNC2(string);

    char *d = buffer;
    const char *s = string;

    while(*s) {
        if(FUNC3(*s == '\\')) {
            s++;
            if(FUNC1(FUNC0(*s) && FUNC0(s[1]) && FUNC0(s[2]))) {
                char c = *s++ - '0';
                c <<= 3;
                c |= *s++ - '0';
                c <<= 3;
                c |= *s++ - '0';
                *d++ = c;
            }
            else *d++ = '_';
        }
        else *d++ = *s++;
    }
    *d = '\0';

    return buffer;
}