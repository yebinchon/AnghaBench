
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int toolinfo ;
struct cred_dialog_params {scalar_t__ fBalloonTipActive; int hwndBalloonTip; int * pszUsername; } ;
typedef int WCHAR ;
struct TYPE_6__ {int right; int top; int bottom; } ;
struct TYPE_5__ {int cbSize; int uId; int hwnd; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef TYPE_2__ RECT ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;


 int ARRAY_SIZE (int *) ;
 int CredDialogCreateBalloonTip (int ,struct cred_dialog_params*) ;
 int ERR (char*) ;
 int GetDlgItem (int ,int ) ;
 int GetWindowRect (int ,TYPE_2__*) ;
 int IDC_PASSWORD ;
 int IDS_INCORRECTPASSWORDTITLE ;
 int LoadStringW (int ,int ,int *,int ) ;
 int MAKELONG (int,int) ;
 int SendMessageW (int ,int ,scalar_t__,int ) ;
 int TOOLID_INCORRECTPASSWORD ;
 scalar_t__ TRUE ;
 scalar_t__ TTI_ERROR ;
 int TTM_SETTITLEW ;
 int TTM_TRACKACTIVATE ;
 int TTM_TRACKPOSITION ;
 int hinstCredUI ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void CredDialogShowIncorrectPasswordBalloon(HWND hwndDlg, struct cred_dialog_params *params)
{
    TTTOOLINFOW toolinfo;
    RECT rcPassword;
    INT x;
    INT y;
    WCHAR wszTitle[256];




    if (!params->pszUsername[0])
        return;


    if (params->fBalloonTipActive)
        return;

    if (!LoadStringW(hinstCredUI, IDS_INCORRECTPASSWORDTITLE, wszTitle, ARRAY_SIZE(wszTitle)))
    {
        ERR("failed to load IDS_INCORRECTPASSWORDTITLE\n");
        return;
    }

    CredDialogCreateBalloonTip(hwndDlg, params);

    memset(&toolinfo, 0, sizeof(toolinfo));
    toolinfo.cbSize = sizeof(toolinfo);
    toolinfo.hwnd = hwndDlg;
    toolinfo.uId = TOOLID_INCORRECTPASSWORD;

    SendMessageW(params->hwndBalloonTip, TTM_SETTITLEW, TTI_ERROR, (LPARAM)wszTitle);

    GetWindowRect(GetDlgItem(hwndDlg, IDC_PASSWORD), &rcPassword);

    x = rcPassword.right - 12;
    y = (rcPassword.top + rcPassword.bottom) / 2;
    SendMessageW(params->hwndBalloonTip, TTM_TRACKPOSITION, 0, MAKELONG(x, y));

    SendMessageW(params->hwndBalloonTip, TTM_TRACKACTIVATE, TRUE, (LPARAM)&toolinfo);

    params->fBalloonTipActive = TRUE;
}
