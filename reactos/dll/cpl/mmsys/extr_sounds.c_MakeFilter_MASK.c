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
typedef  int WCHAR ;
typedef  int* LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UNICODE_NULL ; 
 int FUNC1 (int*) ; 

LPWSTR FUNC2(LPWSTR psz)
{
    WCHAR *pch;

    FUNC0(psz[0] != UNICODE_NULL &&
           psz[FUNC1(psz) - 1] == L'|');
    for (pch = psz; *pch != UNICODE_NULL; pch++)
    {
        /* replace vertical bar with NULL */
        if (*pch == L'|')
        {
            *pch = UNICODE_NULL;
        }
    }
    return psz;
}