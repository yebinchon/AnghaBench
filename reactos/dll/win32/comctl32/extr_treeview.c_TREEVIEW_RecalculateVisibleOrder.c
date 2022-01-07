
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int maxVisibleOrder; TYPE_1__* root; } ;
struct TYPE_15__ {int visibleOrder; scalar_t__ iIntegral; } ;
struct TYPE_14__ {TYPE_2__* firstChild; } ;
typedef TYPE_2__ TREEVIEW_ITEM ;
typedef TYPE_3__ TREEVIEW_INFO ;


 int ISVISIBLE (TYPE_2__*) ;
 int TREEVIEW_ComputeItemInternalMetrics (TYPE_3__*,TYPE_2__*) ;
 int TREEVIEW_ComputeItemRect (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* TREEVIEW_GetNextListItem (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void
TREEVIEW_RecalculateVisibleOrder(TREEVIEW_INFO *infoPtr, TREEVIEW_ITEM *start)
{
    TREEVIEW_ITEM *item;
    int order;

    if (!start)
    {
 start = infoPtr->root->firstChild;
 order = 0;
    }
    else
 order = start->visibleOrder;

    for (item = start; item != ((void*)0);
         item = TREEVIEW_GetNextListItem(infoPtr, item))
    {
 if (!ISVISIBLE(item) && order > 0)
  TREEVIEW_ComputeItemInternalMetrics(infoPtr, item);
 item->visibleOrder = order;
 order += item->iIntegral;
    }

    infoPtr->maxVisibleOrder = order;

    for (item = start; item != ((void*)0);
  item = TREEVIEW_GetNextListItem(infoPtr, item))
    {
 TREEVIEW_ComputeItemRect(infoPtr, item);
    }
}
