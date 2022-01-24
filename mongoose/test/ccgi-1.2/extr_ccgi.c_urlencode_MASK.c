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
 scalar_t__ FUNC1 (char const*,char const) ; 

__attribute__((used)) static char *
FUNC2(const char *in, char *out, const char *keep) {
    const char hexdigit[] = "0123456789ABCDEF";

    for (; *in != 0; in++) {
        if (FUNC0(*in) ||
            (keep != 0 && FUNC1(keep, *in) != 0))
        {
            *out++ = *in;
        }
        else if (*in == ' ') {
            *out++ = '+';
        }
        else {
            *out++ = '%';
            *out++ = hexdigit[(*in >> 4) & 0xf];
            *out++ = hexdigit[*in & 0xf];
        }
    }
    *out = 0;
    return out;
}