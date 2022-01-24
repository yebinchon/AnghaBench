#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mii ;
struct TYPE_13__ {int /*<<< orphan*/  opendropdown_has_selection; int /*<<< orphan*/  dlg_hwnd; int /*<<< orphan*/  opendropdown_selection; int /*<<< orphan*/  hmenu_opendropdown; } ;
struct TYPE_12__ {int cbSize; int /*<<< orphan*/  wID; int /*<<< orphan*/  fMask; } ;
struct TYPE_11__ {int /*<<< orphan*/  wParam; scalar_t__ lParam; } ;
struct TYPE_10__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  left; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ MSG ;
typedef  TYPE_3__ MENUITEMINFOW ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  TYPE_4__ FileDialogImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  IDOK ; 
 int /*<<< orphan*/  MIIM_ID ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WM_MENUCOMMAND ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC8(FileDialogImpl *This)
{
    HWND open_hwnd;
    RECT open_rc;
    MSG msg;

    open_hwnd = FUNC1(This->dlg_hwnd, IDOK);

    FUNC3(open_hwnd, &open_rc);

    if (FUNC6(This->hmenu_opendropdown, 0, open_rc.left, open_rc.bottom, 0, This->dlg_hwnd, NULL) &&
        FUNC4(&msg, This->dlg_hwnd, WM_MENUCOMMAND, WM_MENUCOMMAND, PM_REMOVE))
    {
        MENUITEMINFOW mii;

        This->opendropdown_has_selection = TRUE;

        mii.cbSize = sizeof(mii);
        mii.fMask = MIIM_ID;
        FUNC2((HMENU)msg.lParam, msg.wParam, TRUE, &mii);
        This->opendropdown_selection = mii.wID;

        if(FUNC5(FUNC7(This)))
            FUNC0(This->dlg_hwnd, S_OK);
        else
            This->opendropdown_has_selection = FALSE;
    }
}