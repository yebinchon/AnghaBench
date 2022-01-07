
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_12__ {scalar_t__ selection_start; scalar_t__ selection_end; int style; int flags; int hwndSelf; } ;
struct TYPE_11__ {int x; int y; } ;
struct TYPE_10__ {int left; int right; int top; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef void* INT ;
typedef int HMENU ;
typedef TYPE_3__ EDITSTATE ;


 int CF_UNICODETEXT ;
 int ClientToScreen (int ,TYPE_2__*) ;
 int DestroyMenu (int ) ;
 int EDIT_ContextMenuCommand (TYPE_3__*,scalar_t__) ;
 scalar_t__ EDIT_EM_CanUndo (TYPE_3__*) ;
 int EF_FOCUSED ;
 int ES_PASSWORD ;
 int ES_READONLY ;
 int EnableMenuItem (int ,int,int) ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetModuleHandleA (char*) ;
 int GetSubMenu (int ,int ) ;
 scalar_t__ IsClipboardFormatAvailable (int ) ;
 int LoadMenuA (int ,char*) ;
 int MF_BYPOSITION ;
 int MF_ENABLED ;
 int MF_GRAYED ;
 int ORDER_UINT (scalar_t__,scalar_t__) ;
 int SetFocus (int ) ;
 int TPM_LEFTALIGN ;
 int TPM_NONOTIFY ;
 int TPM_RETURNCMD ;
 int TPM_RIGHTBUTTON ;
 scalar_t__ TrackPopupMenu (int ,int,int,int,int ,int ,int *) ;
 scalar_t__ get_text_length (TYPE_3__*) ;

__attribute__((used)) static void EDIT_WM_ContextMenu(EDITSTATE *es, INT x, INT y)
{
    HMENU menu = LoadMenuA(GetModuleHandleA("user32.dll"), "EDITMENU");
    HMENU popup = GetSubMenu(menu, 0);
    UINT start = es->selection_start;
    UINT end = es->selection_end;
    UINT cmd;
    POINT pt;

    ORDER_UINT(start, end);


    EnableMenuItem(popup, 0, MF_BYPOSITION | (EDIT_EM_CanUndo(es) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));

    EnableMenuItem(popup, 2, MF_BYPOSITION | ((end - start) && !(es->style & ES_PASSWORD) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));

    EnableMenuItem(popup, 3, MF_BYPOSITION | ((end - start) && !(es->style & ES_PASSWORD) ? MF_ENABLED : MF_GRAYED));

    EnableMenuItem(popup, 4, MF_BYPOSITION | (IsClipboardFormatAvailable(CF_UNICODETEXT) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));

    EnableMenuItem(popup, 5, MF_BYPOSITION | ((end - start) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));

    EnableMenuItem(popup, 7, MF_BYPOSITION | (start || (end != get_text_length(es)) ? MF_ENABLED : MF_GRAYED));

    pt.x = x;
    pt.y = y;

    if (pt.x == -1 && pt.y == -1)
    {
        RECT rc;


        GetClientRect(es->hwndSelf, &rc);
        pt.x = rc.left + (rc.right - rc.left) / 2;
        pt.y = rc.top + (rc.bottom - rc.top) / 2;
        ClientToScreen(es->hwndSelf, &pt);
    }

    if (!(es->flags & EF_FOCUSED))
        SetFocus(es->hwndSelf);

    cmd = TrackPopupMenu(popup, TPM_LEFTALIGN | TPM_RIGHTBUTTON | TPM_RETURNCMD | TPM_NONOTIFY,
            pt.x, pt.y, 0, es->hwndSelf, ((void*)0));

    if (cmd)
        EDIT_ContextMenuCommand(es, cmd);

    DestroyMenu(menu);
}
