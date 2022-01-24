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
typedef  scalar_t__* LPTSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static void
FUNC1(
    LPTSTR pszSource,
    LPTSTR pszTarget,
    LPTSTR pszOutput)
{
    /* build destination file name */
    while (*pszTarget != 0)
    {
        if (*pszTarget == FUNC0('*'))
        {
            pszTarget++;
            while ((*pszSource != 0) && (*pszSource != *pszTarget))
            {
                *pszOutput++ = *pszSource++;
            }
        }
        else if (*pszTarget == FUNC0('?'))
        {
            pszTarget++;
            if (*pszSource != 0)
            {
                *pszOutput++ = *pszSource++;
            }
        }
        else
        {
            *pszOutput++ = *pszTarget++;
            if (*pszSource != 0)
                pszSource++;
        }
    }

    *pszOutput = 0;
}