
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int toolinfo ;
struct cred_dialog_params {scalar_t__ fBalloonTipActive; int hwndBalloonTip; } ;
typedef int WCHAR ;
struct TYPE_6__ {scalar_t__ bottom; scalar_t__ left; } ;
struct TYPE_5__ {int cbSize; int uId; int hwnd; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef TYPE_2__ RECT ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;


 int ARRAY_SIZE (int *) ;
 int CredDialogCreateBalloonTip (int ,struct cred_dialog_params*) ;
 int ERR (char*) ;
 int GetDlgItem (int ,int ) ;
 int GetWindowRect (int ,TYPE_2__*) ;
 int IDC_PASSWORD ;
 int IDS_CAPSLOCKONTITLE ;
 int ID_CAPSLOCKPOP ;
 int LoadStringW (int ,int ,int *,int ) ;
 int MAKELONG (scalar_t__,scalar_t__) ;
 int SendMessageW (int ,int ,scalar_t__,int ) ;
 int SetTimer (int ,int ,int ,int *) ;
 int TOOLID_CAPSLOCKON ;
 scalar_t__ TRUE ;
 scalar_t__ TTDT_AUTOPOP ;
 scalar_t__ TTI_WARNING ;
 int TTM_GETDELAYTIME ;
 int TTM_SETTITLEW ;
 int TTM_TRACKACTIVATE ;
 int TTM_TRACKPOSITION ;
 int hinstCredUI ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void CredDialogShowCapsLockBalloon(HWND hwndDlg, struct cred_dialog_params *params)
{
    TTTOOLINFOW toolinfo;
    RECT rcPassword;
    INT x;
    INT y;
    WCHAR wszTitle[256];


    if (params->fBalloonTipActive)
        return;

    if (!LoadStringW(hinstCredUI, IDS_CAPSLOCKONTITLE, wszTitle, ARRAY_SIZE(wszTitle)))
    {
        ERR("failed to load IDS_IDSCAPSLOCKONTITLE\n");
        return;
    }

    CredDialogCreateBalloonTip(hwndDlg, params);

    memset(&toolinfo, 0, sizeof(toolinfo));
    toolinfo.cbSize = sizeof(toolinfo);
    toolinfo.hwnd = hwndDlg;
    toolinfo.uId = TOOLID_CAPSLOCKON;

    SendMessageW(params->hwndBalloonTip, TTM_SETTITLEW, TTI_WARNING, (LPARAM)wszTitle);

    GetWindowRect(GetDlgItem(hwndDlg, IDC_PASSWORD), &rcPassword);

    x = rcPassword.left + 12;
    y = rcPassword.bottom - 3;
    SendMessageW(params->hwndBalloonTip, TTM_TRACKPOSITION, 0, MAKELONG(x, y));

    SendMessageW(params->hwndBalloonTip, TTM_TRACKACTIVATE, TRUE, (LPARAM)&toolinfo);

    SetTimer(hwndDlg, ID_CAPSLOCKPOP,
             SendMessageW(params->hwndBalloonTip, TTM_GETDELAYTIME, TTDT_AUTOPOP, 0),
             ((void*)0));

    params->fBalloonTipActive = TRUE;
}
