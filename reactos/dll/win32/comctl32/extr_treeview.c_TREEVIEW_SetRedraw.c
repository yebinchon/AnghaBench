
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
struct TYPE_7__ {int bRedraw; int root; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int LRESULT ;


 int TREEVIEW_Invalidate (TYPE_1__*,int *) ;
 int TREEVIEW_RecalculateVisibleOrder (TYPE_1__*,int *) ;
 int TREEVIEW_UpdateScrollBars (TYPE_1__*) ;
 int TREEVIEW_UpdateSubTree (TYPE_1__*,int ) ;

__attribute__((used)) static LRESULT
TREEVIEW_SetRedraw(TREEVIEW_INFO* infoPtr, WPARAM wParam)
{
    infoPtr->bRedraw = wParam != 0;

    if (infoPtr->bRedraw)
    {
        TREEVIEW_UpdateSubTree(infoPtr, infoPtr->root);
        TREEVIEW_RecalculateVisibleOrder(infoPtr, ((void*)0));
        TREEVIEW_UpdateScrollBars(infoPtr);
        TREEVIEW_Invalidate(infoPtr, ((void*)0));
    }
    return 0;
}
