
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_12__ {size_t page_size; int style; scalar_t__ height; size_t nb_items; int focus_item; scalar_t__ item_height; size_t top_item; scalar_t__ width; scalar_t__ in_focus; scalar_t__ caret_on; scalar_t__ column_width; TYPE_1__* items; scalar_t__ self; int owner; scalar_t__ font; scalar_t__ horz_pos; } ;
struct TYPE_11__ {int member_0; int member_1; int member_2; int member_3; scalar_t__ bottom; scalar_t__ top; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_10__ {scalar_t__ height; } ;
typedef TYPE_2__ RECT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_3__ LB_DESCR ;
typedef size_t INT ;
typedef scalar_t__ HFONT ;
typedef scalar_t__ HDC ;
typedef scalar_t__ HBRUSH ;


 int COLOR_GRAYTEXT ;
 int ETO_CLIPPED ;
 int ETO_OPAQUE ;
 int ExtTextOutW (scalar_t__,int ,int ,int,TYPE_2__*,int *,int ,int *) ;
 int FALSE ;
 int GetSysColor (int ) ;
 int IS_OWNERDRAW (TYPE_3__*) ;
 int IsWindowEnabled (scalar_t__) ;
 int LBS_MULTICOLUMN ;
 int LBS_NOREDRAW ;
 int LBS_OWNERDRAWVARIABLE ;
 int LISTBOX_PaintItem (TYPE_3__*,scalar_t__,TYPE_2__*,size_t,int ,int ) ;
 int ODA_DRAWENTIRE ;
 int ODA_FOCUS ;
 scalar_t__ SelectObject (scalar_t__,scalar_t__) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int SetRect (TYPE_2__*,int ,int ,scalar_t__,scalar_t__) ;
 int SetTextColor (scalar_t__,int ) ;
 int SetWindowOrgEx (scalar_t__,scalar_t__,int ,int *) ;
 int TRUE ;
 int WM_CTLCOLORLISTBOX ;

__attribute__((used)) static LRESULT LISTBOX_Paint( LB_DESCR *descr, HDC hdc )
{
    INT i, col_pos = descr->page_size - 1;
    RECT rect;
    RECT focusRect = {-1, -1, -1, -1};
    HFONT oldFont = 0;
    HBRUSH hbrush, oldBrush = 0;

    if (descr->style & LBS_NOREDRAW) return 0;

    SetRect( &rect, 0, 0, descr->width, descr->height );
    if (descr->style & LBS_MULTICOLUMN)
        rect.right = rect.left + descr->column_width;
    else if (descr->horz_pos)
    {
        SetWindowOrgEx( hdc, descr->horz_pos, 0, ((void*)0) );
        rect.right += descr->horz_pos;
    }

    if (descr->font) oldFont = SelectObject( hdc, descr->font );
    hbrush = (HBRUSH)SendMessageW( descr->owner, WM_CTLCOLORLISTBOX,
       (WPARAM)hdc, (LPARAM)descr->self );
    if (hbrush) oldBrush = SelectObject( hdc, hbrush );
    if (!IsWindowEnabled(descr->self)) SetTextColor( hdc, GetSysColor( COLOR_GRAYTEXT ) );

    if (!descr->nb_items && (descr->focus_item != -1) && descr->caret_on &&
        (descr->in_focus))
    {

        rect.bottom = rect.top + descr->item_height;
        ExtTextOutW( hdc, 0, 0, ETO_OPAQUE | ETO_CLIPPED,
                     &rect, ((void*)0), 0, ((void*)0) );
        LISTBOX_PaintItem( descr, hdc, &rect, descr->focus_item, ODA_FOCUS, FALSE );
        rect.top = rect.bottom;
    }




    for (i = descr->top_item; i < descr->nb_items; i++)
    {
        if (!(descr->style & LBS_OWNERDRAWVARIABLE))
            rect.bottom = rect.top + descr->item_height;
        else
            rect.bottom = rect.top + descr->items[i].height;


        if (i == descr->focus_item)
            focusRect = rect;

        LISTBOX_PaintItem( descr, hdc, &rect, i, ODA_DRAWENTIRE, TRUE );
        rect.top = rect.bottom;

        if ((descr->style & LBS_MULTICOLUMN) && !col_pos)
        {
            if (!IS_OWNERDRAW(descr))
            {

                if (rect.top < descr->height)
                {
                    rect.bottom = descr->height;
                    ExtTextOutW( hdc, 0, 0, ETO_OPAQUE | ETO_CLIPPED,
                                   &rect, ((void*)0), 0, ((void*)0) );
                }
            }


            rect.left += descr->column_width;
            rect.right += descr->column_width;
            rect.top = 0;
            col_pos = descr->page_size - 1;
        }
        else
        {
            col_pos--;
            if (rect.top >= descr->height) break;
        }
    }


    if (focusRect.top != focusRect.bottom &&
        descr->caret_on && descr->in_focus)
        LISTBOX_PaintItem( descr, hdc, &focusRect, descr->focus_item, ODA_FOCUS, FALSE );

    if (!IS_OWNERDRAW(descr))
    {

        if (rect.top < descr->height)
        {
            rect.bottom = descr->height;
            ExtTextOutW( hdc, 0, 0, ETO_OPAQUE | ETO_CLIPPED,
                           &rect, ((void*)0), 0, ((void*)0) );
        }
        if (rect.right < descr->width)
        {
            rect.left = rect.right;
            rect.right = descr->width;
            rect.top = 0;
            rect.bottom = descr->height;
            ExtTextOutW( hdc, 0, 0, ETO_OPAQUE | ETO_CLIPPED,
                           &rect, ((void*)0), 0, ((void*)0) );
        }
    }
    if (oldFont) SelectObject( hdc, oldFont );
    if (oldBrush) SelectObject( hdc, oldBrush );
    return 0;
}
