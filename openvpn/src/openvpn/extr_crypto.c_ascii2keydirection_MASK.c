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
 int KEY_DIRECTION_BIDIRECTIONAL ; 
 int KEY_DIRECTION_INVERSE ; 
 int KEY_DIRECTION_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

int
FUNC2(int msglevel, const char *str)
{
    if (!str)
    {
        return KEY_DIRECTION_BIDIRECTIONAL;
    }
    else if (!FUNC1(str, "0"))
    {
        return KEY_DIRECTION_NORMAL;
    }
    else if (!FUNC1(str, "1"))
    {
        return KEY_DIRECTION_INVERSE;
    }
    else
    {
        FUNC0(msglevel, "Unknown key direction '%s' -- must be '0' or '1'", str);
        return -1;
    }
    return KEY_DIRECTION_BIDIRECTIONAL; /* NOTREACHED */
}