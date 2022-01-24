#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szTemp ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int cbSize; int uFlags; int /*<<< orphan*/  szTip; int /*<<< orphan*/ * hIcon; int /*<<< orphan*/  uCallbackMessage; scalar_t__ uID; int /*<<< orphan*/  hWnd; } ;
typedef  TYPE_1__ NOTIFYICONDATAW ;
typedef  int /*<<< orphan*/ * HICON ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDS_MSG_TRAYICONCPUUSAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int NIF_ICON ; 
 int NIF_MESSAGE ; 
 int NIF_TIP ; 
 int /*<<< orphan*/  NIM_MODIFY ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  WM_ONTRAYICON ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  hMainWnd ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOL FUNC7(void)
{
    NOTIFYICONDATAW nid;
    HICON           hIcon = NULL;
    BOOL            bRetVal;
    WCHAR           szTemp[64];

    FUNC5(&nid, 0, sizeof(NOTIFYICONDATAW));

    hIcon = FUNC4();

    nid.cbSize = sizeof(NOTIFYICONDATAW);
    nid.hWnd = hMainWnd;
    nid.uID = 0;
    nid.uFlags = NIF_ICON | NIF_MESSAGE | NIF_TIP;
    nid.uCallbackMessage = WM_ONTRAYICON;
    nid.hIcon = hIcon;
    FUNC1(hInst, IDS_MSG_TRAYICONCPUUSAGE, szTemp, sizeof(szTemp)/sizeof(szTemp[0]));
    FUNC6(nid.szTip, szTemp, FUNC2());

    bRetVal = FUNC3(NIM_MODIFY, &nid);

    if (hIcon)
        FUNC0(hIcon);

    return bRetVal;
}