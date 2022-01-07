
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_13__ {int top; scalar_t__ left; } ;
struct TYPE_16__ {size_t itemID; int CtlID; int itemState; TYPE_1__ rcItem; int itemData; int hDC; int itemAction; int hwndItem; int CtlType; } ;
struct TYPE_15__ {size_t nb_items; size_t focus_item; int style; scalar_t__ in_focus; scalar_t__ caret_on; int tabs; int nb_tabs; int self; int owner; TYPE_2__* items; } ;
struct TYPE_14__ {scalar_t__ selected; int * str; int data; } ;
typedef TYPE_1__ RECT ;
typedef int LPARAM ;
typedef TYPE_2__ LB_ITEMDATA ;
typedef TYPE_3__ LB_DESCR ;
typedef size_t INT ;
typedef scalar_t__ HRGN ;
typedef int HDC ;
typedef TYPE_4__ DRAWITEMSTRUCT ;
typedef int COLORREF ;
typedef int BOOL ;


 int COLOR_HIGHLIGHT ;
 int COLOR_HIGHLIGHTTEXT ;
 int DeleteObject (scalar_t__) ;
 int DrawFocusRect (int ,TYPE_1__ const*) ;
 int ERR (char*,size_t,size_t) ;
 int ETO_CLIPPED ;
 int ETO_OPAQUE ;
 int ExtTextOutW (int ,scalar_t__,int ,int,TYPE_1__ const*,int *,int ,int *) ;
 int GWLP_ID ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetSysColor (int ) ;
 int GetWindowLongPtrW (int ,int ) ;
 scalar_t__ IS_OWNERDRAW (TYPE_3__*) ;
 int IsWindowEnabled (int ) ;
 int LBS_USETABSTOPS ;
 int ODA_FOCUS ;
 int ODS_DISABLED ;
 int ODS_FOCUS ;
 int ODS_SELECTED ;
 int ODT_LISTBOX ;
 int SelectClipRgn (int ,scalar_t__) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetBkColor (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int TRACE (char*,int ,size_t,char*,int ,int ,...) ;
 int TabbedTextOutW (int ,scalar_t__,int ,int *,int ,int ,int ,int ) ;
 int WM_DRAWITEM ;
 char* debugstr_w (int *) ;
 scalar_t__ set_control_clipping (int ,TYPE_1__*) ;
 int strlenW (int *) ;
 int wine_dbgstr_rect (TYPE_1__ const*) ;

__attribute__((used)) static void LISTBOX_PaintItem( LB_DESCR *descr, HDC hdc, const RECT *rect,
          INT index, UINT action, BOOL ignoreFocus )
{
    LB_ITEMDATA *item = ((void*)0);
    if (index < descr->nb_items) item = &descr->items[index];

    if (IS_OWNERDRAW(descr))
    {
        DRAWITEMSTRUCT dis;
        RECT r;
        HRGN hrgn;

 if (!item)
 {
     if (action == ODA_FOCUS)
  DrawFocusRect( hdc, rect );
     else
         ERR("called with an out of bounds index %d(%d) in owner draw, Not good.\n",index,descr->nb_items);
     return;
 }





        GetClientRect(descr->self, &r);
        hrgn = set_control_clipping( hdc, &r );

        dis.CtlType = ODT_LISTBOX;
        dis.CtlID = GetWindowLongPtrW( descr->self, GWLP_ID );
        dis.hwndItem = descr->self;
        dis.itemAction = action;
        dis.hDC = hdc;
        dis.itemID = index;
        dis.itemState = 0;
        if (item->selected) dis.itemState |= ODS_SELECTED;
        if (!ignoreFocus && (descr->focus_item == index) &&
            (descr->caret_on) &&
            (descr->in_focus)) dis.itemState |= ODS_FOCUS;
        if (!IsWindowEnabled(descr->self)) dis.itemState |= ODS_DISABLED;
        dis.itemData = item->data;
        dis.rcItem = *rect;
        TRACE("[%p]: drawitem %d (%s) action=%02x state=%02x rect=%s\n",
              descr->self, index, debugstr_w(item->str), action,
              dis.itemState, wine_dbgstr_rect(rect) );
        SendMessageW(descr->owner, WM_DRAWITEM, dis.CtlID, (LPARAM)&dis);
        SelectClipRgn( hdc, hrgn );
        if (hrgn) DeleteObject( hrgn );
    }
    else
    {
        COLORREF oldText = 0, oldBk = 0;

        if (action == ODA_FOCUS)
        {
            DrawFocusRect( hdc, rect );
            return;
        }
        if (item && item->selected)
        {
            oldBk = SetBkColor( hdc, GetSysColor( COLOR_HIGHLIGHT ) );
            oldText = SetTextColor( hdc, GetSysColor(COLOR_HIGHLIGHTTEXT));
        }

        TRACE("[%p]: painting %d (%s) action=%02x rect=%s\n",
              descr->self, index, item ? debugstr_w(item->str) : "", action,
              wine_dbgstr_rect(rect) );
        if (!item)
            ExtTextOutW( hdc, rect->left + 1, rect->top,
                           ETO_OPAQUE | ETO_CLIPPED, rect, ((void*)0), 0, ((void*)0) );
        else if (!(descr->style & LBS_USETABSTOPS))
            ExtTextOutW( hdc, rect->left + 1, rect->top,
                         ETO_OPAQUE | ETO_CLIPPED, rect, item->str,
                         strlenW(item->str), ((void*)0) );
        else
 {

            ExtTextOutW( hdc, rect->left + 1, rect->top,
                         ETO_OPAQUE | ETO_CLIPPED, rect, ((void*)0), 0, ((void*)0) );
            TabbedTextOutW( hdc, rect->left + 1 , rect->top,
                            item->str, strlenW(item->str),
                            descr->nb_tabs, descr->tabs, 0);
 }
        if (item && item->selected)
        {
            SetBkColor( hdc, oldBk );
            SetTextColor( hdc, oldText );
        }
        if (!ignoreFocus && (descr->focus_item == index) &&
            (descr->caret_on) &&
            (descr->in_focus)) DrawFocusRect( hdc, rect );
    }
}
