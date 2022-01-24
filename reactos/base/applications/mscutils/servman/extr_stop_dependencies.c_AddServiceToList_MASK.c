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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int* LPWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int*) ; 
 int FUNC4 (int*) ; 

__attribute__((used)) static LPWSTR
FUNC5(LPWSTR *lpServiceList,
                 LPWSTR lpServiceToAdd)
{
    LPWSTR lpNewList = NULL;
    LPWSTR ptr;
    DWORD dwToAddSize;
    DWORD dwCurSize;

    dwToAddSize = FUNC4(lpServiceToAdd) + 1;

    /* Is this is the first in the list? */
    if (!*lpServiceList)
    {
        /* Add another char for double null */
        dwToAddSize++;

        lpNewList = FUNC1(FUNC0(),
                              0,
                              dwToAddSize * sizeof(WCHAR));
        if (lpNewList)
        {
            /* Copy the service name */
            FUNC3(lpNewList,
                          dwToAddSize,
                          lpServiceToAdd);

            /* Add the double null char */
            lpNewList[dwToAddSize - 1] = L'\0';
        }
    }
    else
    {
        ptr = *lpServiceList;
        dwCurSize = 0;

        /* Get the list size */
        for (;;)
        {
            /* Break when we hit the double null */
            if (*ptr == L'\0' && *(ptr + 1) == L'\0')
                break;

            ptr++;
            dwCurSize++;
        }
        dwCurSize++;

        /* Add another char for double null */
        dwCurSize++;

        /* Extend the list size */
        lpNewList = FUNC2(FUNC0(),
                                0,
                                *lpServiceList,
                                (dwCurSize + dwToAddSize) * sizeof(WCHAR));
        if (lpNewList)
        {
            /* Copy the service name */
            FUNC3(&lpNewList[dwCurSize - 1],
                          dwToAddSize,
                          lpServiceToAdd);

            /* Add the double null char */
            lpNewList[dwCurSize + dwToAddSize - 1] = L'\0';
        }
    }

    return lpNewList;
}