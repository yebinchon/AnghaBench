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
typedef  scalar_t__ TCHAR ;
typedef  scalar_t__* LPTSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__* FUNC1 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 

__attribute__((used)) static LPTSTR
FUNC3(TCHAR *p)
{
    TCHAR *end;
    if (*p == FUNC0('"'))
    {
        p = (LPTSTR)FUNC2(p + 1);
        /* If a matching quote is found, truncate the string */
        end = FUNC1(p, FUNC0('"'));
        if (end)
            *end = FUNC0('\0');
    }
    return p;
}