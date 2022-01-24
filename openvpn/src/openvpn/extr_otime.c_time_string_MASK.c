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
typedef  scalar_t__ time_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (struct buffer*) ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,char) ; 
 long FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,int /*<<< orphan*/ *) ; 

const char *
FUNC6(time_t t, int usec, bool show_usec, struct gc_arena *gc)
{
    struct buffer out = FUNC1(64, gc);
    struct timeval tv;

    if (t)
    {
        tv.tv_sec = t;
        tv.tv_usec = usec;
    }
    else
    {
        FUNC5(&tv, NULL);
    }

    t = tv.tv_sec;
    FUNC2(&out, "%s", FUNC4(&t));
    FUNC3(&out, '\n');

    if (show_usec && tv.tv_usec)
    {
        FUNC2(&out, " us=%ld", (long)tv.tv_usec);
    }

    return FUNC0(&out);
}