#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int GlobalFlags; int /*<<< orphan*/  SleepButtonDc; int /*<<< orphan*/  PowerButtonDc; int /*<<< orphan*/  LidCloseDc; int /*<<< orphan*/  SleepButtonAc; int /*<<< orphan*/  PowerButtonAc; int /*<<< orphan*/  LidCloseAc; } ;
struct TYPE_5__ {TYPE_1__ user; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ BST_CHECKED ; 
 int EnablePasswordLogon ; 
 int EnableSysTrayBatteryMeter ; 
 int EnableVideoDimDisplay ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_LIDCLOSE ; 
 int /*<<< orphan*/  IDC_PASSWORDLOGON ; 
 int /*<<< orphan*/  IDC_POWERBUTTON ; 
 int /*<<< orphan*/  IDC_SLEEPBUTTON ; 
 int /*<<< orphan*/  IDC_SYSTRAYBATTERYMETER ; 
 int /*<<< orphan*/  IDC_VIDEODIMDISPLAY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MB_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__ gGPP ; 

__attribute__((used)) static VOID
FUNC7(HWND hwndDlg)
{
    BOOL bSystrayBatteryMeter;
    BOOL bPasswordLogon;
    BOOL bVideoDimDisplay;

    bSystrayBatteryMeter =
        (FUNC2(hwndDlg, IDC_SYSTRAYBATTERYMETER) == BST_CHECKED);

    bPasswordLogon =
        (FUNC2(hwndDlg, IDC_PASSWORDLOGON) == BST_CHECKED);

    bVideoDimDisplay =
        (FUNC2(hwndDlg, IDC_VIDEODIMDISPLAY) == BST_CHECKED);

    if (bSystrayBatteryMeter)
    {
        if (!(gGPP.user.GlobalFlags & EnableSysTrayBatteryMeter))
        {
            gGPP.user.GlobalFlags = gGPP.user.GlobalFlags + EnableSysTrayBatteryMeter;
        }
    }
    else
    {
        if ((gGPP.user.GlobalFlags & EnableSysTrayBatteryMeter))
        {
            gGPP.user.GlobalFlags = gGPP.user.GlobalFlags - EnableSysTrayBatteryMeter;
        }
    }

    if (bPasswordLogon)
    {
        if (!(gGPP.user.GlobalFlags & EnablePasswordLogon))
        {
            gGPP.user.GlobalFlags = gGPP.user.GlobalFlags + EnablePasswordLogon;
        }
    }
    else
    {
        if ((gGPP.user.GlobalFlags & EnablePasswordLogon))
        {
            gGPP.user.GlobalFlags = gGPP.user.GlobalFlags - EnablePasswordLogon;
        }
    }

    if (bVideoDimDisplay)
    {
        if (!(gGPP.user.GlobalFlags & EnableVideoDimDisplay))
        {
            gGPP.user.GlobalFlags = gGPP.user.GlobalFlags + EnableVideoDimDisplay;
        }
    }
    else
    {
        if ((gGPP.user.GlobalFlags & EnableVideoDimDisplay))
        {
            gGPP.user.GlobalFlags = gGPP.user.GlobalFlags - EnableVideoDimDisplay;
        }
    }

    if (!FUNC1())
    {
#if 0
        SaveCurrentPowerActionPolicy(GetDlgItem(hwndDlg, IDC_LIDCLOSE), &gGPP.user.LidCloseAc);
#endif
        FUNC4(FUNC0(hwndDlg, IDC_POWERBUTTON), &gGPP.user.PowerButtonAc);
        FUNC4(FUNC0(hwndDlg, IDC_SLEEPBUTTON), &gGPP.user.SleepButtonAc);
    }
    else
    {
#if 0
        SaveCurrentPowerActionPolicy(GetDlgItem(hwndDlg, IDC_LIDCLOSE), &gGPP.user.LidCloseDc);
        SaveCurrentPowerActionPolicy(GetDlgItem(hwndDlg, IDC_POWERBUTTON), &gGPP.user.PowerButtonDc);
        SaveCurrentPowerActionPolicy(GetDlgItem(hwndDlg, IDC_SLEEPBUTTON), &gGPP.user.SleepButtonDc);
#endif
    }

    if (!FUNC6(&gGPP))
    {
        FUNC3(hwndDlg, L"WriteGlobalPwrPolicy failed", NULL, MB_OK);
    }

    FUNC5(bSystrayBatteryMeter);

//    Adv_InitDialog(hwndDlg);
}