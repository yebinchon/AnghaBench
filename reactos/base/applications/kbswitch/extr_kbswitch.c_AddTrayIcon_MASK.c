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
typedef  int /*<<< orphan*/  tnid ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int cbSize; int uID; int uFlags; int /*<<< orphan*/ * szTip; int /*<<< orphan*/  hIcon; int /*<<< orphan*/  uCallbackMessage; int /*<<< orphan*/  hWnd; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__ NOTIFYICONDATA ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CCH_LAYOUT_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int NIF_ICON ; 
 int NIF_MESSAGE ; 
 int NIF_TIP ; 
 int /*<<< orphan*/  NIM_ADD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WM_NOTIFYICONMSG ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static VOID
FUNC8(HWND hwnd)
{
    NOTIFYICONDATA tnid;
    TCHAR szLCID[CCH_LAYOUT_ID + 1];
    TCHAR szName[MAX_PATH];

    FUNC2(FUNC6("1"), szLCID, FUNC0(szLCID));
    FUNC3(FUNC6("1"), szName, FUNC0(szName));

    FUNC7(&tnid, 0, sizeof(tnid));
    tnid.cbSize = sizeof(NOTIFYICONDATA);
    tnid.hWnd = hwnd;
    tnid.uID = 1;
    tnid.uFlags = NIF_ICON | NIF_MESSAGE | NIF_TIP;
    tnid.uCallbackMessage = WM_NOTIFYICONMSG;
    tnid.hIcon = FUNC1(szLCID);

    FUNC5(tnid.szTip, FUNC0(tnid.szTip), szName);

    FUNC4(NIM_ADD, &tnid);
}