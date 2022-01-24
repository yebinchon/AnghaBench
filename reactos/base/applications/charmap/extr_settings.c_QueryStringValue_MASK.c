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
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  scalar_t__ LPCTSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int LONG ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int ERROR_SUCCESS ; 
 int REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

LONG FUNC4(HKEY hKey, LPCTSTR lpSubKey, LPCTSTR lpValueName, LPTSTR pszBuffer, DWORD dwBufferLen)
{
    LONG lResult;
    HKEY hSubKey = NULL;
    DWORD cbData, dwType;

    if (lpSubKey)
    {
        lResult = FUNC1(hKey, lpSubKey, &hSubKey);
        if (lResult != ERROR_SUCCESS)
            goto done;
        hKey = hSubKey;
    }

    cbData = (dwBufferLen - 1) * sizeof(*pszBuffer);
    lResult = FUNC2(hKey, lpValueName, NULL, &dwType, (LPBYTE) pszBuffer, &cbData);
    if (lResult != ERROR_SUCCESS)
        goto done;
    if (dwType != REG_SZ)
    {
        lResult = -1;
        goto done;
    }

    pszBuffer[cbData / sizeof(*pszBuffer)] = FUNC3('\0');

done:
    if (lResult != ERROR_SUCCESS)
        pszBuffer[0] = FUNC3('\0');
    if (hSubKey)
        FUNC0(hSubKey);
    return lResult;
}