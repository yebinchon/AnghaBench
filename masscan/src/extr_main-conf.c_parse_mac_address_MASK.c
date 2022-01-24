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
 unsigned int FUNC0 (char) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static int
FUNC4(const char *text, unsigned char *mac)
{
    unsigned i;

    for (i=0; i<6; i++) {
        unsigned x;
        char c;

        while (FUNC2(*text & 0xFF) && FUNC1(*text & 0xFF))
            text++;

        c = *text;
        if (!FUNC3(c&0xFF))
            return -1;
        x = FUNC0(c)<<4;
        text++;

        c = *text;
        if (!FUNC3(c&0xFF))
            return -1;
        x |= FUNC0(c);
        text++;

        mac[i] = (unsigned char)x;

        if (FUNC1(*text & 0xFF))
            text++;
    }

    return 0;
}