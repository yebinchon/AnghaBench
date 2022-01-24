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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SETCHECK ; 
 int /*<<< orphan*/  BST_CHECKED ; 
 int /*<<< orphan*/  BST_UNCHECKED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  IDC_AUTOSYNC ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static VOID
FUNC5(HWND hwnd)
{
    HKEY hKey;
    WCHAR szData[8];
    DWORD dwSize;

    if (FUNC1(HKEY_LOCAL_MACHINE,
                      L"SYSTEM\\CurrentControlSet\\Services\\W32Time\\Parameters",
                      0,
                      KEY_QUERY_VALUE,
                      &hKey) == ERROR_SUCCESS)
    {
        dwSize = 8 * sizeof(WCHAR);
        if (FUNC2(hKey,
                             L"Type",
                             NULL,
                             NULL,
                             (LPBYTE)szData,
                             &dwSize) == ERROR_SUCCESS)
        {
            if (FUNC4(szData, L"NTP") == 0)
                FUNC3(hwnd, IDC_AUTOSYNC, BM_SETCHECK, BST_CHECKED, 0);
            else
                FUNC3(hwnd, IDC_AUTOSYNC, BM_SETCHECK, BST_UNCHECKED, 0);
        }

        FUNC0(hKey);
    }
}