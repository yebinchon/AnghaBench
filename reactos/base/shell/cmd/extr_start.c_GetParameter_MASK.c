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
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static TCHAR *FUNC2(TCHAR **pPointer)
{
    BOOL bInQuote = FALSE;
    TCHAR *start = *pPointer;
    TCHAR *p;
    for (p = start; *p; p++)
    {
        if (!bInQuote && (*p == FUNC0('/') || FUNC1(*p)))
            break;
        bInQuote ^= (*p == FUNC0('"'));
        p[-1] = *p;
    }
    p[-1] = FUNC0('\0');
    *pPointer = p;
    return start - 1;
}