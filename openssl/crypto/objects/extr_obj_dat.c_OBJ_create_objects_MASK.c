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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 

int FUNC5(BIO *in)
{
    char buf[512];
    int i, num = 0;
    char *o, *s, *l = NULL;

    for (;;) {
        s = o = NULL;
        i = FUNC0(in, buf, 512);
        if (i <= 0)
            return num;
        buf[i - 1] = '\0';
        if (!FUNC2(buf[0]))
            return num;
        o = s = buf;
        while (FUNC3(*s) || *s == '.')
            s++;
        if (*s != '\0') {
            *(s++) = '\0';
            while (FUNC4(*s))
                s++;
            if (*s == '\0') {
                s = NULL;
            } else {
                l = s;
                while (*l != '\0' && !FUNC4(*l))
                    l++;
                if (*l != '\0') {
                    *(l++) = '\0';
                    while (FUNC4(*l))
                        l++;
                    if (*l == '\0') {
                        l = NULL;
                    }
                } else {
                    l = NULL;
                }
            }
        } else {
            s = NULL;
        }
        if (*o == '\0')
            return num;
        if (!FUNC1(o, s, l))
            return num;
        num++;
    }
}