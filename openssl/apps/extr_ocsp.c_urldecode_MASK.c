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
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(char *p)
{
    unsigned char *out = (unsigned char *)p;
    unsigned char *save = out;

    for (; *p; p++) {
        if (*p != '%')
            *out++ = *p;
        else if (FUNC2(FUNC1(p[1])) && FUNC2(FUNC1(p[2]))) {
            /* Don't check, can't fail because of ixdigit() call. */
            *out++ = (FUNC0(p[1]) << 4)
                   | FUNC0(p[2]);
            p += 2;
        }
        else
            return -1;
    }
    *out = '\0';
    return (int)(out - save);
}