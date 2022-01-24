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
typedef  int /*<<< orphan*/  szMsg ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int cbSize; int uFlags; int /*<<< orphan*/  szTip; int /*<<< orphan*/ * hIcon; int /*<<< orphan*/  uCallbackMessage; scalar_t__ uID; int /*<<< orphan*/  hWnd; } ;
typedef  TYPE_1__ NOTIFYICONDATAW ;
typedef  int /*<<< orphan*/ * HICON ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDS_MSG_TRAYICONCPUUSAGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int NIF_ICON ; 
 int NIF_MESSAGE ; 
 int NIF_TIP ; 
 int /*<<< orphan*/  NIM_ADD ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  WM_ONTRAYICON ; 
 int /*<<< orphan*/  hMainWnd ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOL FUNC8(void)
{
    NOTIFYICONDATAW nid;
    HICON           hIcon = NULL;
    BOOL            bRetVal;
    WCHAR           szMsg[64];

    FUNC6(&nid, 0, sizeof(NOTIFYICONDATAW));

    hIcon = FUNC5();

    nid.cbSize = sizeof(NOTIFYICONDATAW);
    nid.hWnd = hMainWnd;
    nid.uID = 0;
    nid.uFlags = NIF_ICON | NIF_MESSAGE | NIF_TIP;
    nid.uCallbackMessage = WM_ONTRAYICON;
    nid.hIcon = hIcon;


    FUNC2( FUNC1(NULL), IDS_MSG_TRAYICONCPUUSAGE, szMsg, sizeof(szMsg) / sizeof(szMsg[0]));
    FUNC7(nid.szTip, szMsg, FUNC3());

    bRetVal = FUNC4(NIM_ADD, &nid);

    if (hIcon)
        FUNC0(hIcon);

    return bRetVal;
}