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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MB_ICONERROR ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOL
FUNC5(HWND hwndDlg,
                 INT nIdDlgItem,
                 LPTSTR lpAccountName)
{
    TCHAR szAccountName[256];
    UINT uLen;

    if (lpAccountName)
        uLen = FUNC3(lpAccountName);
    else
        uLen = FUNC0(hwndDlg, nIdDlgItem, szAccountName, 256);

    /* Check the account name */
    if (uLen > 0 &&
        FUNC4((lpAccountName) ? lpAccountName : szAccountName, FUNC2("\"*+,/\\:;<=>?[]|")) != NULL)
    {
        FUNC1(hwndDlg,
                   FUNC2("The account name you entered is invalid! An account name must not contain the following characters: *+,/:;<=>?[\\]|"),
                   FUNC2("ERROR"),
                   MB_OK | MB_ICONERROR);
        return FALSE;
    }

    return TRUE;
}