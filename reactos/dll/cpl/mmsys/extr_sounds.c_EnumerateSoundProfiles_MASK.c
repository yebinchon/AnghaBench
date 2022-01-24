#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ szDefault; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__* PGLOBAL_DATA ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 

DWORD
FUNC8(PGLOBAL_DATA pGlobalData, HWND hwndDlg, HKEY hKey)
{
    HKEY hSubKey;
    DWORD dwName, dwCurKey, dwResult, dwNumSchemes;
    DWORD cbDefault;
    TCHAR szName[MAX_PATH];

    cbDefault = sizeof(pGlobalData->szDefault);
    if (FUNC4(hKey,
                        NULL,
                        NULL,
                        NULL,
                        (LPBYTE)pGlobalData->szDefault,
                        &cbDefault) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    if (FUNC3(hKey,
                     FUNC5("Names"),
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    dwNumSchemes = 0;
    dwCurKey = 0;
    do
    {
        dwName = FUNC6(szName);
        dwResult = FUNC2(hSubKey,
                                dwCurKey,
                                szName,
                                &dwName,
                                NULL,
                                NULL,
                                NULL,
                                NULL);

        if (dwResult == ERROR_SUCCESS)
        {
            if (FUNC0(hwndDlg, hSubKey, szName, (!FUNC7(szName, pGlobalData->szDefault))))
            {
                dwNumSchemes++;
            }
        }

        dwCurKey++;
    } while (dwResult == ERROR_SUCCESS);

    FUNC1(hSubKey);
    return dwNumSchemes;
}