
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int style; int captured; int anchor_item; int owner; scalar_t__ self; TYPE_2__* lphc; TYPE_1__* items; scalar_t__ in_focus; int caret_on; int focus_item; } ;
struct TYPE_13__ {int x; int y; } ;
struct TYPE_12__ {scalar_t__ self; scalar_t__ hWndEdit; } ;
struct TYPE_11__ {int selected; } ;
typedef TYPE_3__ POINT ;
typedef int LRESULT ;
typedef TYPE_4__ LB_DESCR ;
typedef int INT ;
typedef int DWORD ;


 scalar_t__ DragDetect (scalar_t__,TYPE_3__) ;
 int FALSE ;
 int GWL_EXSTYLE ;
 int GetWindowLongW (scalar_t__,int ) ;
 int LBS_EXTENDEDSEL ;
 int LBS_MULTIPLESEL ;
 int LBS_NOTIFY ;
 int LISTBOX_GetItemFromPoint (TYPE_4__*,int,int) ;
 int LISTBOX_MoveCaret (TYPE_4__*,int,int ) ;
 int LISTBOX_SetCaretIndex (TYPE_4__*,int,int ) ;
 int LISTBOX_SetSelection (TYPE_4__*,int,int,int) ;
 int MAKELPARAM (int,int) ;
 int MK_CONTROL ;
 int MK_SHIFT ;
 int SendMessageW (int ,int ,int,int ) ;
 int SetCapture (scalar_t__) ;
 int SetFocus (scalar_t__) ;
 int TRACE (char*,scalar_t__,int,int,int,int ) ;
 int TRUE ;
 int WM_BEGINDRAG ;
 int WM_LBTRACKPOINT ;
 int WS_EX_DRAGDETECT ;

__attribute__((used)) static LRESULT LISTBOX_HandleLButtonDown( LB_DESCR *descr, DWORD keys, INT x, INT y )
{
    INT index = LISTBOX_GetItemFromPoint( descr, x, y );

    TRACE("[%p]: lbuttondown %d,%d item %d, focus item %d\n",
          descr->self, x, y, index, descr->focus_item);

    if (!descr->caret_on && (descr->in_focus)) return 0;

    if (!descr->in_focus)
    {
        if( !descr->lphc ) SetFocus( descr->self );
        else SetFocus( (descr->lphc->hWndEdit) ? descr->lphc->hWndEdit : descr->lphc->self );
    }

    if (index == -1) return 0;

    if (!descr->lphc)
    {
        if (descr->style & LBS_NOTIFY )
            SendMessageW( descr->owner, WM_LBTRACKPOINT, index,
                            MAKELPARAM( x, y ) );
    }

    descr->captured = TRUE;
    SetCapture( descr->self );

    if (descr->style & (LBS_EXTENDEDSEL | LBS_MULTIPLESEL))
    {






        if (!(keys & MK_SHIFT)) descr->anchor_item = index;
        if (keys & MK_CONTROL)
        {
            LISTBOX_SetCaretIndex( descr, index, FALSE );
            LISTBOX_SetSelection( descr, index,
                                  !descr->items[index].selected,
                                  (descr->style & LBS_NOTIFY) != 0);
        }
        else
        {
            LISTBOX_MoveCaret( descr, index, FALSE );

            if (descr->style & LBS_EXTENDEDSEL)
            {
                LISTBOX_SetSelection( descr, index,
                               descr->items[index].selected,
                              (descr->style & LBS_NOTIFY) != 0 );
            }
            else
            {
                LISTBOX_SetSelection( descr, index,
                               !descr->items[index].selected,
                              (descr->style & LBS_NOTIFY) != 0 );
            }
        }
    }
    else
    {
        descr->anchor_item = index;
        LISTBOX_MoveCaret( descr, index, FALSE );
        LISTBOX_SetSelection( descr, index,
                              TRUE, (descr->style & LBS_NOTIFY) != 0 );
    }

    if (!descr->lphc)
    {
        if (GetWindowLongW( descr->self, GWL_EXSTYLE ) & WS_EX_DRAGDETECT)
        {
            POINT pt;

     pt.x = x;
     pt.y = y;

            if (DragDetect( descr->self, pt ))
                SendMessageW( descr->owner, WM_BEGINDRAG, 0, 0 );
        }
    }
    return 0;
}
