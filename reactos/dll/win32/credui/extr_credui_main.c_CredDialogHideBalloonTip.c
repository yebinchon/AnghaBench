
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int toolinfo ;
struct cred_dialog_params {int fBalloonTipActive; int hwndBalloonTip; } ;
struct TYPE_3__ {int cbSize; int uId; int hwnd; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef int LPARAM ;
typedef int HWND ;


 int FALSE ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TTM_TRACKACTIVATE ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void CredDialogHideBalloonTip(HWND hwndDlg, struct cred_dialog_params *params)
{
    TTTOOLINFOW toolinfo;

    if (!params->hwndBalloonTip)
        return;

    memset(&toolinfo, 0, sizeof(toolinfo));

    toolinfo.cbSize = sizeof(toolinfo);
    toolinfo.hwnd = hwndDlg;
    toolinfo.uId = 0;
    SendMessageW(params->hwndBalloonTip, TTM_TRACKACTIVATE, FALSE, (LPARAM)&toolinfo);
    toolinfo.uId = 1;
    SendMessageW(params->hwndBalloonTip, TTM_TRACKACTIVATE, FALSE, (LPARAM)&toolinfo);

    params->fBalloonTipActive = FALSE;
}
