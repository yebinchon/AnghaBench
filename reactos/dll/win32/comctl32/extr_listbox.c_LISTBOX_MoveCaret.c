
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nb_items; int style; int anchor_item; scalar_t__ focus_item; } ;
typedef TYPE_1__ LB_DESCR ;
typedef scalar_t__ INT ;
typedef int BOOL ;


 int FALSE ;
 int LBS_EXTENDEDSEL ;
 int LBS_MULTIPLESEL ;
 int LISTBOX_DrawFocusRect (TYPE_1__*,int ) ;
 int LISTBOX_MakeItemVisible (TYPE_1__*,scalar_t__,int ) ;
 int LISTBOX_SelectItemRange (TYPE_1__*,scalar_t__,scalar_t__,int ) ;
 int LISTBOX_SetSelection (TYPE_1__*,scalar_t__,int ,int ) ;
 int TRACE (char*,scalar_t__,scalar_t__) ;
 int TRUE ;
 scalar_t__ max (scalar_t__,int) ;
 scalar_t__ min (scalar_t__,int) ;

__attribute__((used)) static void LISTBOX_MoveCaret( LB_DESCR *descr, INT index, BOOL fully_visible )
{
    TRACE("old focus %d, index %d\n", descr->focus_item, index);

    if ((index < 0) || (index >= descr->nb_items))
        return;
    LISTBOX_DrawFocusRect( descr, FALSE );



    if (descr->style & LBS_EXTENDEDSEL)
    {
        if (descr->anchor_item != -1)
        {
            INT first = min( index, descr->anchor_item );
            INT last = max( index, descr->anchor_item );
            if (first > 0)
                LISTBOX_SelectItemRange( descr, 0, first - 1, FALSE );
            LISTBOX_SelectItemRange( descr, last + 1, -1, FALSE );
            LISTBOX_SelectItemRange( descr, first, last, TRUE );
        }
    }
    else if (!(descr->style & LBS_MULTIPLESEL))
    {

        LISTBOX_SetSelection( descr, index, TRUE, FALSE );
    }


    descr->focus_item = index;
    LISTBOX_MakeItemVisible( descr, index, fully_visible );
    LISTBOX_DrawFocusRect( descr, TRUE );
}
