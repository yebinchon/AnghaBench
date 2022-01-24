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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ REG_EXPAND_SZ ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 

DWORD
FUNC6(HKEY hServiceKey,
              LPCWSTR lpValueName,
              LPWSTR *lpValue)
{
    DWORD dwError = 0;
    DWORD dwSize = 0;
    DWORD dwType = 0;
    LPWSTR ptr = NULL;
    LPWSTR expanded = NULL;

    *lpValue = NULL;

    dwError = FUNC5(hServiceKey,
                               lpValueName,
                               0,
                               &dwType,
                               NULL,
                               &dwSize);
    if (dwError != ERROR_SUCCESS)
        return dwError;

    ptr = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, dwSize);
    if (ptr == NULL)
        return ERROR_NOT_ENOUGH_MEMORY;

    dwError = FUNC5(hServiceKey,
                               lpValueName,
                               0,
                               &dwType,
                               (LPBYTE)ptr,
                               &dwSize);
    if (dwError != ERROR_SUCCESS)
    {
        FUNC4(FUNC2(), 0, ptr);
        return dwError;
    }

    if (dwType == REG_EXPAND_SZ)
    {
        /* Expand the value... */
        dwSize = FUNC0(ptr, NULL, 0);
        if (dwSize > 0)
        {
            expanded = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, dwSize * sizeof(WCHAR));
            if (expanded)
            {
                if (dwSize == FUNC0(ptr, expanded, dwSize))
                {
                    *lpValue = expanded;
                    dwError = ERROR_SUCCESS;
                }
                else
                {
                    dwError = FUNC1();
                    FUNC4(FUNC2(), 0, expanded);
                }
            }
            else
            {
                dwError = ERROR_NOT_ENOUGH_MEMORY;
            }
        }
        else
        {
            dwError = FUNC1();
        }

        FUNC4(FUNC2(), 0, ptr);
    }
    else
    {
        *lpValue = ptr;
    }

    return dwError;
}