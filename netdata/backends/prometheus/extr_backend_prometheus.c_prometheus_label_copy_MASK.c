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

__attribute__((used)) static inline size_t FUNC1(char *d, const char *s, size_t usable) {
    size_t n;

    // make sure we can escape one character without overflowing the buffer
    usable--;

    for(n = 0; *s && n < usable ; d++, s++, n++) {
        register char c = *s;

        if(FUNC0(c == '"' || c == '\\' || c == '\n')) {
            *d++ = '\\';
            n++;
        }
        *d = c;
    }
    *d = '\0';

    return n;
}