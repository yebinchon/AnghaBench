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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SETCHECK ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  IDC_ASKME_RB ; 
 int /*<<< orphan*/  IDC_RESTART_RB ; 
 int /*<<< orphan*/  IDC_WITHOUTREBOOT_RB ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static VOID
FUNC6(HWND hWnd)
{
    HKEY hKey;

    if (FUNC1(HKEY_CURRENT_USER,
                     FUNC4("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Controls Folder\\Display"),
                     0, KEY_READ, &hKey) == ERROR_SUCCESS)
    {
        TCHAR szBuf[64];
        DWORD dwSize = 64;

        if (FUNC2(hKey, FUNC4("DynaSettingsChange"), 0, NULL,
                            (LPBYTE)szBuf, &dwSize) == ERROR_SUCCESS)
        {
            switch (FUNC5(szBuf))
            {
                case 0:
                    FUNC3(hWnd, IDC_RESTART_RB, BM_SETCHECK, 1, 1);
                    break;
                case 1:
                    FUNC3(hWnd, IDC_WITHOUTREBOOT_RB, BM_SETCHECK, 1, 1);
                    break;
                case 3:
                    FUNC3(hWnd, IDC_ASKME_RB, BM_SETCHECK, 1, 1);
                    break;
            }
        }
        else
            FUNC3(hWnd, IDC_WITHOUTREBOOT_RB, BM_SETCHECK, 1, 1);

        FUNC0(hKey);
    }
    else
        FUNC3(hWnd, IDC_WITHOUTREBOOT_RB, BM_SETCHECK, 1, 1);
}