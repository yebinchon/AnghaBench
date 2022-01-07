
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {scalar_t__ NumSoundAdapter; scalar_t__ NumDisplayAdapter; void** hDialogs; int hTabCtrl; } ;
typedef TYPE_1__* PDXDIAG_CONTEXT ;
typedef int LPARAM ;
typedef int HWND ;


 void* CreateDialogParamW (int ,int ,int ,int ,int ) ;
 int EnableDialogTheme (void*) ;
 int GetDlgItem (int ,int ) ;
 int HelpPageWndProc ;
 int IDC_TAB_CONTROL ;
 int IDD_HELP_DIALOG ;
 int IDD_INPUT_DIALOG ;
 int IDD_MUSIC_DIALOG ;
 int IDD_NETWORK_DIALOG ;
 int IDD_SYSTEM_DIALOG ;
 int IDS_HELP_DIALOG ;
 int IDS_INPUT_DIALOG ;
 int IDS_MUSIC_DIALOG ;
 int IDS_NETWORK_DIALOG ;
 int IDS_SYSTEM_DIALOG ;
 int InitializeDirectSoundPage (TYPE_1__*) ;
 int InitializeDisplayAdapters (TYPE_1__*) ;
 int InputPageWndProc ;
 int InsertTabCtrlItem (int ,scalar_t__,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int MusicPageWndProc ;
 int NetworkPageWndProc ;
 int SystemPageWndProc ;
 int TabCtrl_OnSelChange (TYPE_1__*) ;
 int hInst ;
 int hTabCtrlWnd ;

VOID
InitializeTabCtrl(HWND hwndDlg, PDXDIAG_CONTEXT pContext)
{

    hTabCtrlWnd = GetDlgItem(hwndDlg, IDC_TAB_CONTROL);
    pContext->hTabCtrl = hTabCtrlWnd;


    pContext->hDialogs[0] = CreateDialogParamW(hInst, MAKEINTRESOURCEW(IDD_SYSTEM_DIALOG), pContext->hTabCtrl, SystemPageWndProc, (LPARAM)pContext); EnableDialogTheme(pContext->hDialogs[0]);
    pContext->hDialogs[1] = CreateDialogParamW(hInst, MAKEINTRESOURCEW(IDD_MUSIC_DIALOG), pContext->hTabCtrl, MusicPageWndProc, (LPARAM)pContext); EnableDialogTheme(pContext->hDialogs[1]);
    pContext->hDialogs[2] = CreateDialogParamW(hInst, MAKEINTRESOURCEW(IDD_INPUT_DIALOG), pContext->hTabCtrl, InputPageWndProc, (LPARAM)pContext); EnableDialogTheme(pContext->hDialogs[2]);
    pContext->hDialogs[3] = CreateDialogParamW(hInst, MAKEINTRESOURCEW(IDD_NETWORK_DIALOG), pContext->hTabCtrl, NetworkPageWndProc, (LPARAM)pContext); EnableDialogTheme(pContext->hDialogs[3]);
    pContext->hDialogs[4] = CreateDialogParamW(hInst, MAKEINTRESOURCEW(IDD_HELP_DIALOG), pContext->hTabCtrl, HelpPageWndProc, (LPARAM)pContext); EnableDialogTheme(pContext->hDialogs[4]);


    InsertTabCtrlItem(hTabCtrlWnd, 0, MAKEINTRESOURCEW(IDS_SYSTEM_DIALOG));
    InitializeDisplayAdapters(pContext);
    InitializeDirectSoundPage(pContext);
    InsertTabCtrlItem(hTabCtrlWnd, pContext->NumDisplayAdapter + pContext->NumSoundAdapter + 1, MAKEINTRESOURCEW(IDS_MUSIC_DIALOG));
    InsertTabCtrlItem(hTabCtrlWnd, pContext->NumDisplayAdapter + pContext->NumSoundAdapter + 2, MAKEINTRESOURCEW(IDS_INPUT_DIALOG));
    InsertTabCtrlItem(hTabCtrlWnd, pContext->NumDisplayAdapter + pContext->NumSoundAdapter + 3, MAKEINTRESOURCEW(IDS_NETWORK_DIALOG));
    InsertTabCtrlItem(hTabCtrlWnd, pContext->NumDisplayAdapter + pContext->NumSoundAdapter + 4, MAKEINTRESOURCEW(IDS_HELP_DIALOG));
    TabCtrl_OnSelChange(pContext);
}
