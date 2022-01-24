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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  DirectPlay8SP ; 
 int /*<<< orphan*/  DirectPlaySP ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  IDC_LIST_PROVIDER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  LVM_SETEXTENDEDLISTVIEWSTYLE ; 
 int /*<<< orphan*/  LVS_EX_FULLROWSELECT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void
FUNC6(HWND hwndDlg)
{
    HKEY hKey;
    LONG result;
    HWND hDlgCtrl;

    /* open DirectPlay8 key */
    result = FUNC4(HKEY_LOCAL_MACHINE, L"SOFTWARE\\Microsoft\\DirectPlay8\\Service Providers", 0, KEY_READ, &hKey);
    if (result != ERROR_SUCCESS)
        return;

    hDlgCtrl = FUNC1(hwndDlg, IDC_LIST_PROVIDER);

    /* Highlights the entire row instead of just the selected item in the first column */
    FUNC5(hDlgCtrl, LVM_SETEXTENDEDLISTVIEWSTYLE, 0, LVS_EX_FULLROWSELECT);

    /* initialize list ctrl */
    FUNC2(hDlgCtrl);

    /* enumerate providers */
    result = FUNC0(hKey, hDlgCtrl, DirectPlay8SP);
    FUNC3(hKey);
    if (!result)
        return;

    /* open DirectPlay key */
    result = FUNC4(HKEY_LOCAL_MACHINE, L"SOFTWARE\\Microsoft\\DirectPlay\\Service Providers", 0, KEY_READ, &hKey);
    if (result != ERROR_SUCCESS)
        return;

    /* enumerate providers */
    FUNC0(hKey, hDlgCtrl, DirectPlaySP);
    FUNC3(hKey);
}