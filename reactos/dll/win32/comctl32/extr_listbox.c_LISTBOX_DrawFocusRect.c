
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int focus_item; int self; int horz_pos; scalar_t__ font; int in_focus; int caret_on; } ;
typedef int RECT ;
typedef TYPE_1__ LB_DESCR ;
typedef scalar_t__ HFONT ;
typedef int HDC ;
typedef int BOOL ;


 int COLOR_GRAYTEXT ;
 int DCX_CACHE ;
 int GetDCEx (int ,int ,int ) ;
 int GetSysColor (int ) ;
 int IsWindowEnabled (int ) ;
 int IsWindowVisible (int ) ;
 int LISTBOX_GetItemRect (TYPE_1__*,int,int *) ;
 int LISTBOX_PaintItem (TYPE_1__*,int ,int *,int,int ,int) ;
 int ODA_FOCUS ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SetTextColor (int ,int ) ;
 int SetWindowOrgEx (int ,int ,int ,int *) ;

__attribute__((used)) static void LISTBOX_DrawFocusRect( LB_DESCR *descr, BOOL on )
{
    HDC hdc;
    RECT rect;
    HFONT oldFont = 0;


    if (!IsWindowVisible(descr->self)) return;

    if (descr->focus_item == -1) return;
    if (!descr->caret_on || !descr->in_focus) return;

    if (LISTBOX_GetItemRect( descr, descr->focus_item, &rect ) != 1) return;
    if (!(hdc = GetDCEx( descr->self, 0, DCX_CACHE ))) return;
    if (descr->font) oldFont = SelectObject( hdc, descr->font );
    if (!IsWindowEnabled(descr->self))
        SetTextColor( hdc, GetSysColor( COLOR_GRAYTEXT ) );
    SetWindowOrgEx( hdc, descr->horz_pos, 0, ((void*)0) );
    LISTBOX_PaintItem( descr, hdc, &rect, descr->focus_item, ODA_FOCUS, !on );
    if (oldFont) SelectObject( hdc, oldFont );
    ReleaseDC( descr->self, hdc );
}
