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
typedef  int /*<<< orphan*/  PGLOBAL_DATA ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

BOOL
FUNC5(PGLOBAL_DATA pGlobalData, HWND hwndDlg)
{
    HKEY hSubKey;
    DWORD dwNumSchemes;

    if (FUNC3(HKEY_CURRENT_USER,
                     FUNC4("AppEvents\\Schemes"),
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    dwNumSchemes = FUNC0(pGlobalData, hwndDlg, hSubKey);


    if (dwNumSchemes)
    {
        //MessageBox(hwndDlg, _T("importing sound profiles..."), NULL, MB_OK);
        FUNC1(pGlobalData, hwndDlg, hSubKey);
    }

    FUNC2(hSubKey);
    return FALSE;
}