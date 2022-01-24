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
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SETCHECK ; 
 int /*<<< orphan*/  BST_CHECKED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  IDC_REPORTASWORKSTATION ; 
 int /*<<< orphan*/  KEY_READ ; 
 scalar_t__ REG_DWORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  ReportAsWorkstationKey ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static VOID
FUNC5(HWND hwndDlg)
{
    HKEY hKey;
    DWORD dwVal;
    DWORD dwType = REG_DWORD;
    DWORD cbData = sizeof(DWORD);

    if (FUNC1(HKEY_LOCAL_MACHINE,
                     ReportAsWorkstationKey,
                     0,
                     KEY_READ,
                     &hKey) == ERROR_SUCCESS)
    {
        if (FUNC2(hKey,
                            FUNC4("ReportAsWorkstation"),
                            0,
                            &dwType,
                            (LPBYTE)&dwVal,
                            &cbData) == ERROR_SUCCESS)
        {
            if (dwVal != FALSE)
            {
                // set the check box
                FUNC3(hwndDlg,
                                    IDC_REPORTASWORKSTATION,
                                    BM_SETCHECK,
                                    BST_CHECKED,
                                    0);
            }
        }

        FUNC0(hKey);
    }
}