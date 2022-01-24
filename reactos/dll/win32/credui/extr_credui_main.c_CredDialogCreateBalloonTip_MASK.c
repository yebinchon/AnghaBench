#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  toolinfo ;
struct cred_dialog_params {scalar_t__ hwndBalloonTip; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_2__ {int cbSize; int /*<<< orphan*/  uId; int /*<<< orphan*/ * lpReserved; scalar_t__ lParam; int /*<<< orphan*/ * lpszText; int /*<<< orphan*/ * hinst; int /*<<< orphan*/  rect; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  uFlags; } ;
typedef  TYPE_1__ TTTOOLINFOW ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  HWND_TOPMOST ; 
 int /*<<< orphan*/  IDS_CAPSLOCKON ; 
 int /*<<< orphan*/  IDS_INCORRECTPASSWORD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOSIZE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TOOLID_CAPSLOCKON ; 
 int /*<<< orphan*/  TOOLID_INCORRECTPASSWORD ; 
 int /*<<< orphan*/  TOOLTIPS_CLASSW ; 
 int /*<<< orphan*/  TTF_TRACK ; 
 int /*<<< orphan*/  TTM_ADDTOOLW ; 
 int TTS_BALLOON ; 
 int TTS_NOPREFIX ; 
 int /*<<< orphan*/  WS_EX_TOOLWINDOW ; 
 int WS_POPUP ; 
 int /*<<< orphan*/  hinstCredUI ; 

__attribute__((used)) static void FUNC7(HWND hwndDlg, struct cred_dialog_params *params)
{
    TTTOOLINFOW toolinfo;
    WCHAR wszText[256];

    if (params->hwndBalloonTip)
        return;

    params->hwndBalloonTip = FUNC1(WS_EX_TOOLWINDOW, TOOLTIPS_CLASSW,
        NULL, WS_POPUP | TTS_NOPREFIX | TTS_BALLOON, CW_USEDEFAULT,
        CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, hwndDlg, NULL,
        hinstCredUI, NULL);
    FUNC6(params->hwndBalloonTip, HWND_TOPMOST, 0, 0, 0, 0,
                 SWP_NOMOVE | SWP_NOSIZE | SWP_NOACTIVATE);

    if (!FUNC3(hinstCredUI, IDS_INCORRECTPASSWORD, wszText, FUNC0(wszText)))
    {
        FUNC2("failed to load IDS_INCORRECTPASSWORD\n");
        return;
    }

    toolinfo.cbSize = sizeof(toolinfo);
    toolinfo.uFlags = TTF_TRACK;
    toolinfo.hwnd = hwndDlg;
    toolinfo.uId = TOOLID_INCORRECTPASSWORD;
    FUNC5(&toolinfo.rect);
    toolinfo.hinst = NULL;
    toolinfo.lpszText = wszText;
    toolinfo.lParam = 0;
    toolinfo.lpReserved = NULL;
    FUNC4(params->hwndBalloonTip, TTM_ADDTOOLW, 0, (LPARAM)&toolinfo);

    if (!FUNC3(hinstCredUI, IDS_CAPSLOCKON, wszText, FUNC0(wszText)))
    {
        FUNC2("failed to load IDS_CAPSLOCKON\n");
        return;
    }

    toolinfo.uId = TOOLID_CAPSLOCKON;
    FUNC4(params->hwndBalloonTip, TTM_ADDTOOLW, 0, (LPARAM)&toolinfo);
}