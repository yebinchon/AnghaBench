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
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BM_GETCHECK ; 
 scalar_t__ BST_CHECKED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  IDC_REPORTASWORKSTATION ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ReportAsWorkstationKey ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static VOID
FUNC5(HWND hwndDlg)
{
    HKEY hKey;
    DWORD ReportAsWorkstation;

    ReportAsWorkstation = (FUNC3(hwndDlg,
                                               IDC_REPORTASWORKSTATION,
                                               BM_GETCHECK,
                                               0,
                                               0) == BST_CHECKED);

    if (FUNC1(HKEY_LOCAL_MACHINE,
                       ReportAsWorkstationKey,
                       0,
                       NULL,
                       0,
                       KEY_WRITE,
                       NULL,
                       &hKey,
                       NULL) == ERROR_SUCCESS)
    {
        FUNC2(hKey,
                      FUNC4("ReportAsWorkstation"),
                      0,
                      REG_DWORD,
                      (LPBYTE)&ReportAsWorkstation,
                      sizeof(DWORD));

        FUNC0(hKey);
    }
}