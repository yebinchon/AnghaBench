
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dwStyle; int hwndSelf; int rcList; } ;
typedef int RECT ;
typedef TYPE_1__ LISTVIEW_INFO ;
typedef int INT ;


 int LISTVIEW_UpdateHScroll (TYPE_1__*) ;
 int LISTVIEW_UpdateVScroll (TYPE_1__*) ;
 int LVS_NOSCROLL ;
 int SW_ERASE ;
 int SW_INVALIDATE ;
 int ScrollWindowEx (int ,int,int,int *,int *,int ,int ,int) ;
 int is_redrawing (TYPE_1__*) ;

__attribute__((used)) static void LISTVIEW_UpdateScroll(LISTVIEW_INFO *infoPtr)
{
    INT dx, dy, pass;

    if ((infoPtr->dwStyle & LVS_NOSCROLL) || !is_redrawing(infoPtr)) return;





    for (dx = 0, dy = 0, pass = 0; pass <= 1; pass++)
    {
        dx += LISTVIEW_UpdateHScroll(infoPtr);
        dy += LISTVIEW_UpdateVScroll(infoPtr);
    }


    if (dx != 0 || dy != 0)
    {
        RECT listRect;
        listRect = infoPtr->rcList;
        ScrollWindowEx(infoPtr->hwndSelf, dx, dy, &listRect, &listRect, 0, 0,
            SW_ERASE | SW_INVALIDATE);
    }
}
