#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {scalar_t__ NumSoundAdapter; scalar_t__ NumDisplayAdapter; void** hDialogs; int /*<<< orphan*/  hTabCtrl; } ;
typedef  TYPE_1__* PDXDIAG_CONTEXT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HelpPageWndProc ; 
 int /*<<< orphan*/  IDC_TAB_CONTROL ; 
 int /*<<< orphan*/  IDD_HELP_DIALOG ; 
 int /*<<< orphan*/  IDD_INPUT_DIALOG ; 
 int /*<<< orphan*/  IDD_MUSIC_DIALOG ; 
 int /*<<< orphan*/  IDD_NETWORK_DIALOG ; 
 int /*<<< orphan*/  IDD_SYSTEM_DIALOG ; 
 int /*<<< orphan*/  IDS_HELP_DIALOG ; 
 int /*<<< orphan*/  IDS_INPUT_DIALOG ; 
 int /*<<< orphan*/  IDS_MUSIC_DIALOG ; 
 int /*<<< orphan*/  IDS_NETWORK_DIALOG ; 
 int /*<<< orphan*/  IDS_SYSTEM_DIALOG ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  InputPageWndProc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MusicPageWndProc ; 
 int /*<<< orphan*/  NetworkPageWndProc ; 
 int /*<<< orphan*/  SystemPageWndProc ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  hTabCtrlWnd ; 

VOID
FUNC8(HWND hwndDlg, PDXDIAG_CONTEXT pContext)
{
    /* get tabctrl */
    hTabCtrlWnd = FUNC2(hwndDlg, IDC_TAB_CONTROL);
    pContext->hTabCtrl = hTabCtrlWnd;

    /* create the dialogs */
    pContext->hDialogs[0] = FUNC0(hInst, FUNC6(IDD_SYSTEM_DIALOG), pContext->hTabCtrl, SystemPageWndProc, (LPARAM)pContext); FUNC1(pContext->hDialogs[0]);
    pContext->hDialogs[1] = FUNC0(hInst, FUNC6(IDD_MUSIC_DIALOG), pContext->hTabCtrl, MusicPageWndProc, (LPARAM)pContext); FUNC1(pContext->hDialogs[1]);
    pContext->hDialogs[2] = FUNC0(hInst, FUNC6(IDD_INPUT_DIALOG), pContext->hTabCtrl, InputPageWndProc, (LPARAM)pContext); FUNC1(pContext->hDialogs[2]);
    pContext->hDialogs[3] = FUNC0(hInst, FUNC6(IDD_NETWORK_DIALOG), pContext->hTabCtrl, NetworkPageWndProc, (LPARAM)pContext); FUNC1(pContext->hDialogs[3]);
    pContext->hDialogs[4] = FUNC0(hInst, FUNC6(IDD_HELP_DIALOG), pContext->hTabCtrl, HelpPageWndProc, (LPARAM)pContext); FUNC1(pContext->hDialogs[4]);

    /* insert tab ctrl items */
    FUNC5(hTabCtrlWnd, 0, FUNC6(IDS_SYSTEM_DIALOG));
    FUNC4(pContext);
    FUNC3(pContext);
    FUNC5(hTabCtrlWnd, pContext->NumDisplayAdapter + pContext->NumSoundAdapter + 1, FUNC6(IDS_MUSIC_DIALOG));
    FUNC5(hTabCtrlWnd, pContext->NumDisplayAdapter + pContext->NumSoundAdapter + 2, FUNC6(IDS_INPUT_DIALOG));
    FUNC5(hTabCtrlWnd, pContext->NumDisplayAdapter + pContext->NumSoundAdapter + 3, FUNC6(IDS_NETWORK_DIALOG));
    FUNC5(hTabCtrlWnd, pContext->NumDisplayAdapter + pContext->NumSoundAdapter + 4, FUNC6(IDS_HELP_DIALOG));
    FUNC7(pContext);
}