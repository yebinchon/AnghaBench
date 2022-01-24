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
struct cred_dialog_params {scalar_t__ fBalloonTipActive; int /*<<< orphan*/  hwndBalloonTip; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {scalar_t__ bottom; scalar_t__ left; } ;
struct TYPE_5__ {int cbSize; int /*<<< orphan*/  uId; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ TTTOOLINFOW ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cred_dialog_params*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  IDC_PASSWORD ; 
 int /*<<< orphan*/  IDS_CAPSLOCKONTITLE ; 
 int /*<<< orphan*/  ID_CAPSLOCKPOP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TOOLID_CAPSLOCKON ; 
 scalar_t__ TRUE ; 
 scalar_t__ TTDT_AUTOPOP ; 
 scalar_t__ TTI_WARNING ; 
 int /*<<< orphan*/  TTM_GETDELAYTIME ; 
 int /*<<< orphan*/  TTM_SETTITLEW ; 
 int /*<<< orphan*/  TTM_TRACKACTIVATE ; 
 int /*<<< orphan*/  TTM_TRACKPOSITION ; 
 int /*<<< orphan*/  hinstCredUI ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(HWND hwndDlg, struct cred_dialog_params *params)
{
    TTTOOLINFOW toolinfo;
    RECT rcPassword;
    INT x;
    INT y;
    WCHAR wszTitle[256];

    /* don't show two balloon tips at once */
    if (params->fBalloonTipActive)
        return;

    if (!FUNC5(hinstCredUI, IDS_CAPSLOCKONTITLE, wszTitle, FUNC0(wszTitle)))
    {
        FUNC2("failed to load IDS_IDSCAPSLOCKONTITLE\n");
        return;
    }

    FUNC1(hwndDlg, params);

    FUNC9(&toolinfo, 0, sizeof(toolinfo));
    toolinfo.cbSize = sizeof(toolinfo);
    toolinfo.hwnd = hwndDlg;
    toolinfo.uId = TOOLID_CAPSLOCKON;

    FUNC7(params->hwndBalloonTip, TTM_SETTITLEW, TTI_WARNING, (LPARAM)wszTitle);

    FUNC4(FUNC3(hwndDlg, IDC_PASSWORD), &rcPassword);
    /* just inside the left side of the password edit control */
    x = rcPassword.left + 12;
    y = rcPassword.bottom - 3;
    FUNC7(params->hwndBalloonTip, TTM_TRACKPOSITION, 0, FUNC6(x, y));

    FUNC7(params->hwndBalloonTip, TTM_TRACKACTIVATE, TRUE, (LPARAM)&toolinfo);

    FUNC8(hwndDlg, ID_CAPSLOCKPOP,
             FUNC7(params->hwndBalloonTip, TTM_GETDELAYTIME, TTDT_AUTOPOP, 0),
             NULL);

    params->fBalloonTipActive = TRUE;
}