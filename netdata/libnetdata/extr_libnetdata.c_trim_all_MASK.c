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

inline char *FUNC1(char *buffer) {
    char *d = buffer, *s = buffer;

    // skip spaces
    while(FUNC0(*s)) s++;

    while(*s) {
        // copy the non-space part
        while(*s && !FUNC0(*s)) *d++ = *s++;

        // add a space if we have to
        if(*s && FUNC0(*s)) {
            *d++ = ' ';
            s++;
        }

        // skip spaces
        while(FUNC0(*s)) s++;
    }

    *d = '\0';

    if(d > buffer) {
        d--;
        if(FUNC0(*d)) *d = '\0';
    }

    if(!buffer[0]) return NULL;
    return buffer;
}