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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {scalar_t__ Selection; } ;
typedef  TYPE_1__* PDATA ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CB_GETCURSEL ; 
 int /*<<< orphan*/  CB_GETITEMDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_MINTEXT ; 
 int /*<<< orphan*/  IDC_SCREENS_LIST ; 
 int /*<<< orphan*/  IDC_SCREENS_SETTINGS ; 
 int /*<<< orphan*/  IDC_SCREENS_TESTSC ; 
 int /*<<< orphan*/  IDC_SCREENS_TIME ; 
 int /*<<< orphan*/  IDC_SCREENS_TIMEDELAY ; 
 int /*<<< orphan*/  IDC_SCREENS_USEPASSCHK ; 
 int /*<<< orphan*/  IDC_WAITTEXT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC3(HWND hwndDlg, PDATA pData)
{
    HWND hwndCombo;
    BOOL bEnable;
    INT i;

    hwndCombo = FUNC1(hwndDlg, IDC_SCREENS_LIST);

    i = (INT)FUNC2(hwndCombo, CB_GETCURSEL, 0, 0);
    i = (INT)FUNC2(hwndCombo, CB_GETITEMDATA, i, 0);

    pData->Selection = i;

    bEnable = (i != 0);

    FUNC0(FUNC1(hwndDlg, IDC_SCREENS_SETTINGS), bEnable);
    FUNC0(FUNC1(hwndDlg, IDC_SCREENS_TESTSC), bEnable);
    FUNC0(FUNC1(hwndDlg, IDC_SCREENS_USEPASSCHK), bEnable);
    FUNC0(FUNC1(hwndDlg, IDC_SCREENS_TIMEDELAY), bEnable);
    FUNC0(FUNC1(hwndDlg, IDC_SCREENS_TIME), bEnable);
    FUNC0(FUNC1(hwndDlg, IDC_WAITTEXT), bEnable);
    FUNC0(FUNC1(hwndDlg, IDC_MINTEXT), bEnable);
}