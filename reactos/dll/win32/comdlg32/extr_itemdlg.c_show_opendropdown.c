
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int mii ;
struct TYPE_13__ {int opendropdown_has_selection; int dlg_hwnd; int opendropdown_selection; int hmenu_opendropdown; } ;
struct TYPE_12__ {int cbSize; int wID; int fMask; } ;
struct TYPE_11__ {int wParam; scalar_t__ lParam; } ;
struct TYPE_10__ {int bottom; int left; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ MSG ;
typedef TYPE_3__ MENUITEMINFOW ;
typedef int HWND ;
typedef int HMENU ;
typedef TYPE_4__ FileDialogImpl ;


 int EndDialog (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetMenuItemInfoW (int ,int ,int ,TYPE_3__*) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int IDOK ;
 int MIIM_ID ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageW (TYPE_2__*,int ,int ,int ,int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRUE ;
 scalar_t__ TrackPopupMenu (int ,int ,int ,int ,int ,int ,int *) ;
 int WM_MENUCOMMAND ;
 int on_default_action (TYPE_4__*) ;

__attribute__((used)) static void show_opendropdown(FileDialogImpl *This)
{
    HWND open_hwnd;
    RECT open_rc;
    MSG msg;

    open_hwnd = GetDlgItem(This->dlg_hwnd, IDOK);

    GetWindowRect(open_hwnd, &open_rc);

    if (TrackPopupMenu(This->hmenu_opendropdown, 0, open_rc.left, open_rc.bottom, 0, This->dlg_hwnd, ((void*)0)) &&
        PeekMessageW(&msg, This->dlg_hwnd, WM_MENUCOMMAND, WM_MENUCOMMAND, PM_REMOVE))
    {
        MENUITEMINFOW mii;

        This->opendropdown_has_selection = TRUE;

        mii.cbSize = sizeof(mii);
        mii.fMask = MIIM_ID;
        GetMenuItemInfoW((HMENU)msg.lParam, msg.wParam, TRUE, &mii);
        This->opendropdown_selection = mii.wID;

        if(SUCCEEDED(on_default_action(This)))
            EndDialog(This->dlg_hwnd, S_OK);
        else
            This->opendropdown_has_selection = FALSE;
    }
}
