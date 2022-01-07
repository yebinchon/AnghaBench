
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int uItemHeight; int dwStyle; int bHeightSet; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int LRESULT ;
typedef int INT ;


 int FALSE ;
 int TRACE (char*,int,...) ;
 int TREEVIEW_Invalidate (TYPE_1__*,int *) ;
 int TREEVIEW_NaturalHeight (TYPE_1__*) ;
 int TREEVIEW_RecalculateVisibleOrder (TYPE_1__*,int *) ;
 int TREEVIEW_UpdateScrollBars (TYPE_1__*) ;
 int TRUE ;
 int TVS_NONEVENHEIGHT ;

__attribute__((used)) static LRESULT
TREEVIEW_SetItemHeight(TREEVIEW_INFO *infoPtr, INT newHeight)
{
    INT prevHeight = infoPtr->uItemHeight;

    TRACE("new=%d, old=%d\n", newHeight, prevHeight);
    if (newHeight == -1)
    {
 infoPtr->uItemHeight = TREEVIEW_NaturalHeight(infoPtr);
 infoPtr->bHeightSet = FALSE;
    }
    else
    {
        if (newHeight == 0) newHeight = 1;
        infoPtr->uItemHeight = newHeight;
        infoPtr->bHeightSet = TRUE;
    }


    if (!(infoPtr->dwStyle & TVS_NONEVENHEIGHT) && infoPtr->uItemHeight != 1)
    {
        infoPtr->uItemHeight &= ~1;
        TRACE("after rounding=%d\n", infoPtr->uItemHeight);
    }

    if (infoPtr->uItemHeight != prevHeight)
    {
 TREEVIEW_RecalculateVisibleOrder(infoPtr, ((void*)0));
 TREEVIEW_UpdateScrollBars(infoPtr);
 TREEVIEW_Invalidate(infoPtr, ((void*)0));
    }

    return prevHeight;
}
