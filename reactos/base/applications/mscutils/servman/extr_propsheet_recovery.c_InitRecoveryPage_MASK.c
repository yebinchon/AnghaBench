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
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  IDC_FIRST_FAILURE ; 
 int /*<<< orphan*/  IDC_RESET_TIME ; 
 scalar_t__ IDC_RESTART_OPTIONS ; 
 scalar_t__ IDC_RESTART_TEXT1 ; 
 int /*<<< orphan*/  IDC_RESTART_TIME ; 
 int /*<<< orphan*/  IDC_SECOND_FAILURE ; 
 int /*<<< orphan*/  IDC_SUBSEQUENT_FAILURES ; 
 scalar_t__ IDS_NO_ACTION ; 
 scalar_t__ IDS_RESTART_COMPUTER ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  hInstance ; 

__attribute__((used)) static
VOID
FUNC5(
    HWND hwndDlg)
{
    LPWSTR lpAction;
    INT id;

    for (id = IDS_NO_ACTION; id <= IDS_RESTART_COMPUTER; id++)
    {
        if (FUNC0(&lpAction,
                               hInstance,
                               id))
        {
            FUNC4(hwndDlg,
                                IDC_FIRST_FAILURE,
                                CB_ADDSTRING,
                                0,
                                (LPARAM)lpAction);

            FUNC4(hwndDlg,
                                IDC_SECOND_FAILURE,
                                CB_ADDSTRING,
                                0,
                                (LPARAM)lpAction);

            FUNC4(hwndDlg,
                                IDC_SUBSEQUENT_FAILURES,
                                CB_ADDSTRING,
                                0,
                                (LPARAM)lpAction);

            FUNC3(lpAction);
        }
    }

    FUNC4(hwndDlg,
                        IDC_FIRST_FAILURE,
                        CB_SETCURSEL,
                        0,
                        0);

    FUNC4(hwndDlg,
                        IDC_SECOND_FAILURE,
                        CB_SETCURSEL,
                        0,
                        0);

    FUNC4(hwndDlg,
                        IDC_SUBSEQUENT_FAILURES,
                        CB_SETCURSEL,
                        0,
                        0);

    FUNC4(hwndDlg,
                        IDC_RESET_TIME,
                        WM_SETTEXT,
                        0,
                        (LPARAM)L"0");

    FUNC4(hwndDlg,
                        IDC_RESTART_TIME,
                        WM_SETTEXT,
                        0,
                        (LPARAM)L"1");

    for (id = IDC_RESTART_TEXT1; id <= IDC_RESTART_OPTIONS; id++)
        FUNC1(FUNC2(hwndDlg, id), FALSE);
}