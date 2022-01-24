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
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(char *s) {
    unsigned char c;
    while((c = (unsigned char)*s)) {
        if(FUNC3(c == '\\'))
            *s++ = '/';
        else if(FUNC3(c == '"'))
            *s++ = '\'';
        else if(FUNC3(FUNC2(c) || FUNC0(c)))
            *s++ = ' ';
        else if(FUNC3(!FUNC1(c) || c > 127))
            *s++ = '_';
        else
            s++;
    }
}