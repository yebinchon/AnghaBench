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
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/ * PCWSTR ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 

DWORD
FUNC11(
    HKEY hKey,
    PCWSTR pszSubKey)
{
    DWORD dwMaxSubkeyLength, dwMaxValueLength;
    DWORD dwMaxLength, dwSize;
    PWSTR pszName = NULL;
    HKEY hSubKey = NULL;
    DWORD dwError;

    if (pszSubKey != NULL)
    {
        dwError = FUNC8(hKey, pszSubKey, 0, KEY_READ, &hSubKey);
        if (dwError != ERROR_SUCCESS)
            return dwError;
    }
    else
    {
         hSubKey = hKey;
    }

    /* Get highest length for keys, values */
    dwError = FUNC9(hSubKey,
                               NULL,
                               NULL,
                               NULL,
                               NULL,
                               &dwMaxSubkeyLength,
                               NULL,
                               NULL,
                               &dwMaxValueLength,
                               NULL,
                               NULL,
                               NULL);
    if (dwError != ERROR_SUCCESS)
        goto done;

    dwMaxSubkeyLength++;
    dwMaxValueLength++;
    dwMaxLength = FUNC10(dwMaxSubkeyLength, dwMaxValueLength);

    /* Allocate a buffer for key and value names */
    pszName = FUNC1(FUNC0(),
                         0,
                         dwMaxLength * sizeof(WCHAR));
    if (pszName == NULL)
    {
        dwError = ERROR_NOT_ENOUGH_MEMORY;
        goto done;
    }

    /* Recursively delete all the subkeys */
    while (TRUE)
    {
        dwSize = dwMaxLength;
        if (FUNC6(hSubKey,
                          0,
                          pszName,
                          &dwSize,
                          NULL,
                          NULL,
                          NULL,
                          NULL))
            break;

        dwError = FUNC11(hSubKey, pszName);
        if (dwError != ERROR_SUCCESS)
            goto done;
    }

    if (pszSubKey != NULL)
    {
        dwError = FUNC4(hKey, pszSubKey);
    }
    else
    {
        while (TRUE)
        {
            dwSize = dwMaxLength;
            if (FUNC7(hKey,
                              0,
                              pszName,
                              &dwSize,
                              NULL,
                              NULL,
                              NULL,
                              NULL))
                break;

            dwError = FUNC5(hKey, pszName);
            if (dwError != ERROR_SUCCESS)
                goto done;
        }
    }

done:
    if (pszName != NULL)
        FUNC2(FUNC0(), 0, pszName);

    if (pszSubKey != NULL)
        FUNC3(hSubKey);

    return dwError;
}