
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int GlobalFlags; int SleepButtonDc; int PowerButtonDc; int LidCloseDc; int SleepButtonAc; int PowerButtonAc; int LidCloseAc; } ;
struct TYPE_5__ {TYPE_1__ user; } ;
typedef int HWND ;
typedef int BOOL ;


 scalar_t__ BST_CHECKED ;
 int EnablePasswordLogon ;
 int EnableSysTrayBatteryMeter ;
 int EnableVideoDimDisplay ;
 int GetDlgItem (int ,int ) ;
 int IDC_LIDCLOSE ;
 int IDC_PASSWORDLOGON ;
 int IDC_POWERBUTTON ;
 int IDC_SLEEPBUTTON ;
 int IDC_SYSTRAYBATTERYMETER ;
 int IDC_VIDEODIMDISPLAY ;
 int IsBatteryUsed () ;
 scalar_t__ IsDlgButtonChecked (int ,int ) ;
 int MB_OK ;
 int MessageBox (int ,char*,int *,int ) ;
 int SaveCurrentPowerActionPolicy (int ,int *) ;
 int SetSystrayPowerIconState (int) ;
 int WriteGlobalPwrPolicy (TYPE_2__*) ;
 TYPE_2__ gGPP ;

__attribute__((used)) static VOID
Adv_SaveData(HWND hwndDlg)
{
    BOOL bSystrayBatteryMeter;
    BOOL bPasswordLogon;
    BOOL bVideoDimDisplay;

    bSystrayBatteryMeter =
        (IsDlgButtonChecked(hwndDlg, IDC_SYSTRAYBATTERYMETER) == BST_CHECKED);

    bPasswordLogon =
        (IsDlgButtonChecked(hwndDlg, IDC_PASSWORDLOGON) == BST_CHECKED);

    bVideoDimDisplay =
        (IsDlgButtonChecked(hwndDlg, IDC_VIDEODIMDISPLAY) == BST_CHECKED);

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

    if (!IsBatteryUsed())
    {



        SaveCurrentPowerActionPolicy(GetDlgItem(hwndDlg, IDC_POWERBUTTON), &gGPP.user.PowerButtonAc);
        SaveCurrentPowerActionPolicy(GetDlgItem(hwndDlg, IDC_SLEEPBUTTON), &gGPP.user.SleepButtonAc);
    }
    else
    {





    }

    if (!WriteGlobalPwrPolicy(&gGPP))
    {
        MessageBox(hwndDlg, L"WriteGlobalPwrPolicy failed", ((void*)0), MB_OK);
    }

    SetSystrayPowerIconState(bSystrayBatteryMeter);


}
