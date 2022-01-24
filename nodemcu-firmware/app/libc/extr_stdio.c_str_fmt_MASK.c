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
#define  FMT_CENTER 131 
#define  FMT_LJUST 130 
#define  FMT_RJUST 129 
#define  FMT_RJUST0 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char) ; 
 int FUNC2 (char*) ; 

void
FUNC3(char *p, int size, int fmt)
{
    int n, m, len;

    len = FUNC2 (p);
    switch (fmt) {
    case FMT_RJUST:
        for (n = size - len; n > 0; n--)
            FUNC1 (p, ' ');
        break;
    case FMT_LJUST:
        for (m = size - len; m > 0; m--)
            FUNC0 (p, " ");
        break;
    case FMT_RJUST0:
        for (n = size - len; n > 0; n--)
            FUNC1 (p, '0');
        break;
    case FMT_CENTER:
        m = (size - len) / 2;
        n = size - (len + m);
        for (; m > 0; m--)
            FUNC0 (p, " ");
        for (; n > 0; n--)
            FUNC1 (p, ' ');
        break;
    }
}