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
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MB_ICONERROR ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int PWLEN ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL
FUNC4(HWND hwndDlg,
               INT nIdDlgItem1,
               INT nIdDlgItem2)
{
    TCHAR szPassword1[PWLEN];
    TCHAR szPassword2[PWLEN];
    UINT uLen1;
    UINT uLen2;

    uLen1 = FUNC0(hwndDlg, nIdDlgItem1, szPassword1, PWLEN);
    uLen2 = FUNC0(hwndDlg, nIdDlgItem2, szPassword2, PWLEN);

    /* Check the passwords */
    if (uLen1 != uLen2 || FUNC3(szPassword1, szPassword2) != 0)
    {
        FUNC1(hwndDlg,
                   FUNC2("The passwords you entered are not the same!"),
                   FUNC2("ERROR"),
                   MB_OK | MB_ICONERROR);
        return FALSE;
    }

    return TRUE;
}