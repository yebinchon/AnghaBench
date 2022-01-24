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
typedef  scalar_t__ const wchar_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const) ; 

__attribute__((used)) static
wchar_t * FUNC1(const wchar_t *s, const wchar_t *b)
{
    wchar_t *x;
    wchar_t *y;
    wchar_t *c;
    x = (wchar_t *)s;
    while (*x)
    {
        if (FUNC0(*x) == FUNC0(*b))
        {
            y = x;
            c = (wchar_t *)b;
            while (*y && *c && FUNC0(*y) == FUNC0(*c))
            {
                c++;
                y++;
            }
            if (!*c)
                return x;
        }
        x++;
    }
    return NULL;
}