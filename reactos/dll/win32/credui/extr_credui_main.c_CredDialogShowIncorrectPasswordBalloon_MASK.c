#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  toolinfo ;
struct cred_dialog_params {scalar_t__ fBalloonTipActive; int /*<<< orphan*/  hwndBalloonTip; int /*<<< orphan*/ * pszUsername; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int right; int top; int bottom; } ;
struct TYPE_5__ {int cbSize; int /*<<< orphan*/  uId; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ TTTOOLINFOW ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cred_dialog_params*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  IDC_PASSWORD ; 
 int /*<<< orphan*/  IDS_INCORRECTPASSWORDTITLE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOOLID_INCORRECTPASSWORD ; 
 scalar_t__ TRUE ; 
 scalar_t__ TTI_ERROR ; 
 int /*<<< orphan*/  TTM_SETTITLEW ; 
 int /*<<< orphan*/  TTM_TRACKACTIVATE ; 
 int /*<<< orphan*/  TTM_TRACKPOSITION ; 
 int /*<<< orphan*/  hinstCredUI ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(HWND hwndDlg, struct cred_dialog_params *params)
{
    TTTOOLINFOW toolinfo;
    RECT rcPassword;
    INT x;
    INT y;
    WCHAR wszTitle[256];

    /* user name likely wrong so balloon would be confusing. focus is also
     * not set to the password edit box, so more notification would need to be
     * handled */
    if (!params->pszUsername[0])
        return;

    /* don't show two balloon tips at once */
    if (params->fBalloonTipActive)
        return;

    if (!FUNC5(hinstCredUI, IDS_INCORRECTPASSWORDTITLE, wszTitle, FUNC0(wszTitle)))
    {
        FUNC2("failed to load IDS_INCORRECTPASSWORDTITLE\n");
        return;
    }

    FUNC1(hwndDlg, params);

    FUNC8(&toolinfo, 0, sizeof(toolinfo));
    toolinfo.cbSize = sizeof(toolinfo);
    toolinfo.hwnd = hwndDlg;
    toolinfo.uId = TOOLID_INCORRECTPASSWORD;

    FUNC7(params->hwndBalloonTip, TTM_SETTITLEW, TTI_ERROR, (LPARAM)wszTitle);

    FUNC4(FUNC3(hwndDlg, IDC_PASSWORD), &rcPassword);
    /* centered vertically and in the right side of the password edit control */
    x = rcPassword.right - 12;
    y = (rcPassword.top + rcPassword.bottom) / 2;
    FUNC7(params->hwndBalloonTip, TTM_TRACKPOSITION, 0, FUNC6(x, y));

    FUNC7(params->hwndBalloonTip, TTM_TRACKACTIVATE, TRUE, (LPARAM)&toolinfo);

    params->fBalloonTipActive = TRUE;
}