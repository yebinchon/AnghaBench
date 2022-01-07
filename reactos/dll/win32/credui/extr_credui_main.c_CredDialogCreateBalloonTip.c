
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int toolinfo ;
struct cred_dialog_params {scalar_t__ hwndBalloonTip; } ;
typedef int WCHAR ;
struct TYPE_2__ {int cbSize; int uId; int * lpReserved; scalar_t__ lParam; int * lpszText; int * hinst; int rect; int hwnd; int uFlags; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef int LPARAM ;
typedef int HWND ;


 int ARRAY_SIZE (int *) ;
 int CW_USEDEFAULT ;
 scalar_t__ CreateWindowExW (int ,int ,int *,int,int ,int ,int ,int ,int ,int *,int ,int *) ;
 int ERR (char*) ;
 int HWND_TOPMOST ;
 int IDS_CAPSLOCKON ;
 int IDS_INCORRECTPASSWORD ;
 int LoadStringW (int ,int ,int *,int ) ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int SetRectEmpty (int *) ;
 int SetWindowPos (scalar_t__,int ,int ,int ,int ,int ,int) ;
 int TOOLID_CAPSLOCKON ;
 int TOOLID_INCORRECTPASSWORD ;
 int TOOLTIPS_CLASSW ;
 int TTF_TRACK ;
 int TTM_ADDTOOLW ;
 int TTS_BALLOON ;
 int TTS_NOPREFIX ;
 int WS_EX_TOOLWINDOW ;
 int WS_POPUP ;
 int hinstCredUI ;

__attribute__((used)) static void CredDialogCreateBalloonTip(HWND hwndDlg, struct cred_dialog_params *params)
{
    TTTOOLINFOW toolinfo;
    WCHAR wszText[256];

    if (params->hwndBalloonTip)
        return;

    params->hwndBalloonTip = CreateWindowExW(WS_EX_TOOLWINDOW, TOOLTIPS_CLASSW,
        ((void*)0), WS_POPUP | TTS_NOPREFIX | TTS_BALLOON, CW_USEDEFAULT,
        CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, hwndDlg, ((void*)0),
        hinstCredUI, ((void*)0));
    SetWindowPos(params->hwndBalloonTip, HWND_TOPMOST, 0, 0, 0, 0,
                 SWP_NOMOVE | SWP_NOSIZE | SWP_NOACTIVATE);

    if (!LoadStringW(hinstCredUI, IDS_INCORRECTPASSWORD, wszText, ARRAY_SIZE(wszText)))
    {
        ERR("failed to load IDS_INCORRECTPASSWORD\n");
        return;
    }

    toolinfo.cbSize = sizeof(toolinfo);
    toolinfo.uFlags = TTF_TRACK;
    toolinfo.hwnd = hwndDlg;
    toolinfo.uId = TOOLID_INCORRECTPASSWORD;
    SetRectEmpty(&toolinfo.rect);
    toolinfo.hinst = ((void*)0);
    toolinfo.lpszText = wszText;
    toolinfo.lParam = 0;
    toolinfo.lpReserved = ((void*)0);
    SendMessageW(params->hwndBalloonTip, TTM_ADDTOOLW, 0, (LPARAM)&toolinfo);

    if (!LoadStringW(hinstCredUI, IDS_CAPSLOCKON, wszText, ARRAY_SIZE(wszText)))
    {
        ERR("failed to load IDS_CAPSLOCKON\n");
        return;
    }

    toolinfo.uId = TOOLID_CAPSLOCKON;
    SendMessageW(params->hwndBalloonTip, TTM_ADDTOOLW, 0, (LPARAM)&toolinfo);
}
