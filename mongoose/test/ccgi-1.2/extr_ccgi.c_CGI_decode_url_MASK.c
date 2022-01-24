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
 int FUNC0 (char const) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 

char *
FUNC3(const char *p) {
    char *out;
    int i, k, L, R;

    if (p == 0) {
        return 0;
    }
    out = (char *) FUNC1(FUNC2(p) + 1);
    for (i = k = 0; p[i] != 0; i++) {
        switch(p[i]) {

        case '+':
            out[k++] = ' ';
            continue;

        case '%':
            if ((L = FUNC0(p[i + 1])) >= 0 &&
                (R = FUNC0(p[i + 2])) >= 0)
            {
                out[k++] = (L << 4) + R;
                i += 2;
                continue;
            }
            break;
        }
        out[k++] = p[i];
    }
    out[k] = 0;
    return out;
}