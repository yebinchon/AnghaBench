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
struct gc_arena {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int,struct gc_arena*) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static char *
FUNC2(const char *src, int from, int to, struct gc_arena *gc)
{
    char *ret = (char *) FUNC0(FUNC1(src) + 1, true, gc);
    char *dest = ret;
    char c;

    do
    {
        c = *src++;
        if (c == from)
        {
            c = to;
        }
        *dest++ = c;
    }
    while (c);
    return ret;
}