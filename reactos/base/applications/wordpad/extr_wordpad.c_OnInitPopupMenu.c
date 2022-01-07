
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mi ;
typedef int WPARAM ;
struct TYPE_7__ {int codepage; int flags; } ;
struct TYPE_6__ {int cbSize; scalar_t__ dwItemData; int fMask; } ;
struct TYPE_5__ {int cbSize; int dwMask; int wAlignment; scalar_t__ wNumbering; } ;
typedef TYPE_1__ PARAFORMAT ;
typedef TYPE_2__ MENUITEMINFOW ;
typedef scalar_t__ LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HMENU ;
typedef TYPE_3__ GETTEXTLENGTHEX ;


 int BANDID_FORMATBAR ;
 int BANDID_RULER ;
 int BANDID_TOOLBAR ;
 int CheckMenuItem (int ,int ,int ) ;
 int EM_CANREDO ;
 int EM_CANUNDO ;
 int EM_GETMODIFY ;
 int EM_GETPARAFORMAT ;
 int EM_GETSEL ;
 int EM_GETTEXTLENGTHEX ;
 int ES_READONLY ;
 int EnableMenuItem (int ,int ,int ) ;
 int FALSE ;
 int GTL_NUMCHARS ;
 int GWL_STYLE ;
 int GetDlgItem (int ,int ) ;
 int GetMenuItemInfoW (int ,int ,int ,TYPE_2__*) ;
 int GetWindowLongW (int ,int ) ;
 int IDC_EDITOR ;
 int IDC_STATUSBAR ;
 int ID_ALIGN_CENTER ;
 int ID_ALIGN_LEFT ;
 int ID_ALIGN_RIGHT ;
 int ID_BULLET ;
 int ID_EDIT_COPY ;
 int ID_EDIT_CUT ;
 int ID_EDIT_MODIFIED ;
 int ID_EDIT_READONLY ;
 int ID_EDIT_REDO ;
 int ID_EDIT_UNDO ;
 int ID_FIND ;
 int ID_FIND_NEXT ;
 int ID_REPLACE ;
 int ID_TOGGLE_FORMATBAR ;
 int ID_TOGGLE_RULER ;
 int ID_TOGGLE_STATUSBAR ;
 int ID_TOGGLE_TOOLBAR ;
 scalar_t__ IsWindowVisible (int ) ;
 int MF_CHECKED ;
 int MF_ENABLED ;
 int MF_GRAYED ;
 int MF_UNCHECKED ;
 int MIIM_DATA ;
 int PFA_CENTER ;
 int PFA_LEFT ;
 int PFA_RIGHT ;
 int PFM_ALIGNMENT ;
 scalar_t__ PFN_BULLET ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int hEditorWnd ;
 scalar_t__ is_bar_visible (int ) ;

__attribute__((used)) static LRESULT OnInitPopupMenu( HWND hWnd, WPARAM wParam )
{
    HMENU hMenu = (HMENU)wParam;
    HWND hwndEditor = GetDlgItem(hWnd, IDC_EDITOR);
    HWND hwndStatus = GetDlgItem(hWnd, IDC_STATUSBAR);
    PARAFORMAT pf;
    int nAlignment = -1;
    int selFrom, selTo;
    GETTEXTLENGTHEX gt;
    LRESULT textLength;
    MENUITEMINFOW mi;

    SendMessageW(hEditorWnd, EM_GETSEL, (WPARAM)&selFrom, (LPARAM)&selTo);
    EnableMenuItem(hMenu, ID_EDIT_COPY, (selFrom == selTo) ? MF_GRAYED : MF_ENABLED);
    EnableMenuItem(hMenu, ID_EDIT_CUT, (selFrom == selTo) ? MF_GRAYED : MF_ENABLED);

    pf.cbSize = sizeof(PARAFORMAT);
    SendMessageW(hwndEditor, EM_GETPARAFORMAT, 0, (LPARAM)&pf);
    CheckMenuItem(hMenu, ID_EDIT_READONLY,
      (GetWindowLongW(hwndEditor, GWL_STYLE) & ES_READONLY) ? MF_CHECKED : MF_UNCHECKED);
    CheckMenuItem(hMenu, ID_EDIT_MODIFIED,
      SendMessageW(hwndEditor, EM_GETMODIFY, 0, 0) ? MF_CHECKED : MF_UNCHECKED);
    if (pf.dwMask & PFM_ALIGNMENT)
        nAlignment = pf.wAlignment;
    CheckMenuItem(hMenu, ID_ALIGN_LEFT, (nAlignment == PFA_LEFT) ? MF_CHECKED : MF_UNCHECKED);
    CheckMenuItem(hMenu, ID_ALIGN_CENTER, (nAlignment == PFA_CENTER) ? MF_CHECKED : MF_UNCHECKED);
    CheckMenuItem(hMenu, ID_ALIGN_RIGHT, (nAlignment == PFA_RIGHT) ? MF_CHECKED : MF_UNCHECKED);
    CheckMenuItem(hMenu, ID_BULLET, ((pf.wNumbering == PFN_BULLET) ? MF_CHECKED : MF_UNCHECKED));
    EnableMenuItem(hMenu, ID_EDIT_UNDO, SendMessageW(hwndEditor, EM_CANUNDO, 0, 0) ?
            MF_ENABLED : MF_GRAYED);
    EnableMenuItem(hMenu, ID_EDIT_REDO, SendMessageW(hwndEditor, EM_CANREDO, 0, 0) ?
            MF_ENABLED : MF_GRAYED);

    CheckMenuItem(hMenu, ID_TOGGLE_TOOLBAR, is_bar_visible(BANDID_TOOLBAR) ?
            MF_CHECKED : MF_UNCHECKED);

    CheckMenuItem(hMenu, ID_TOGGLE_FORMATBAR, is_bar_visible(BANDID_FORMATBAR) ?
            MF_CHECKED : MF_UNCHECKED);

    CheckMenuItem(hMenu, ID_TOGGLE_STATUSBAR, IsWindowVisible(hwndStatus) ?
            MF_CHECKED : MF_UNCHECKED);

    CheckMenuItem(hMenu, ID_TOGGLE_RULER, is_bar_visible(BANDID_RULER) ? MF_CHECKED : MF_UNCHECKED);

    gt.flags = GTL_NUMCHARS;
    gt.codepage = 1200;
    textLength = SendMessageW(hEditorWnd, EM_GETTEXTLENGTHEX, (WPARAM)&gt, 0);
    EnableMenuItem(hMenu, ID_FIND, textLength ? MF_ENABLED : MF_GRAYED);

    mi.cbSize = sizeof(mi);
    mi.fMask = MIIM_DATA;

    GetMenuItemInfoW(hMenu, ID_FIND_NEXT, FALSE, &mi);

    EnableMenuItem(hMenu, ID_FIND_NEXT, (textLength && mi.dwItemData) ? MF_ENABLED : MF_GRAYED);

    EnableMenuItem(hMenu, ID_REPLACE, textLength ? MF_ENABLED : MF_GRAYED);

    return 0;
}
