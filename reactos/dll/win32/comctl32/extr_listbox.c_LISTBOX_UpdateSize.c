
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int width; int height; int style; int item_height; int self; int focus_item; } ;
struct TYPE_11__ {int right; int left; int bottom; int top; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ LB_DESCR ;
typedef int INT ;


 int FALSE ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int InvalidateRect (int ,TYPE_1__*,int ) ;
 int LBS_NOINTEGRALHEIGHT ;
 int LBS_OWNERDRAWVARIABLE ;
 int LISTBOX_GetItemRect (TYPE_2__*,int ,TYPE_1__*) ;
 int LISTBOX_UpdatePage (TYPE_2__*) ;
 int LISTBOX_UpdateScroll (TYPE_2__*) ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int ,int ,int ,int,int,int) ;
 int TRACE (char*,int ,int,int) ;

__attribute__((used)) static void LISTBOX_UpdateSize( LB_DESCR *descr )
{
    RECT rect;

    GetClientRect( descr->self, &rect );
    descr->width = rect.right - rect.left;
    descr->height = rect.bottom - rect.top;
    if (!(descr->style & LBS_NOINTEGRALHEIGHT) && !(descr->style & LBS_OWNERDRAWVARIABLE))
    {
        INT remaining;
        RECT rect;

        GetWindowRect( descr->self, &rect );
        if(descr->item_height != 0)
            remaining = descr->height % descr->item_height;
        else
            remaining = 0;
        if ((descr->height > descr->item_height) && remaining)
        {
            TRACE("[%p]: changing height %d -> %d\n",
                  descr->self, descr->height, descr->height - remaining );
            SetWindowPos( descr->self, 0, 0, 0, rect.right - rect.left,
                          rect.bottom - rect.top - remaining,
                          SWP_NOZORDER | SWP_NOACTIVATE | SWP_NOMOVE );
            return;
        }
    }
    TRACE("[%p]: new size = %d,%d\n", descr->self, descr->width, descr->height );
    LISTBOX_UpdatePage( descr );
    LISTBOX_UpdateScroll( descr );


    if (LISTBOX_GetItemRect( descr, descr->focus_item, &rect ) == 1)
    {
        InvalidateRect( descr->self, &rect, FALSE );
    }
}
