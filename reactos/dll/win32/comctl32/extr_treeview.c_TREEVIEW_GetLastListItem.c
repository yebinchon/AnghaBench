
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* root; } ;
struct TYPE_6__ {int state; struct TYPE_6__* lastChild; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;
typedef TYPE_2__ TREEVIEW_INFO ;


 int TVIS_EXPANDED ;

__attribute__((used)) static TREEVIEW_ITEM *
TREEVIEW_GetLastListItem(const TREEVIEW_INFO *infoPtr, TREEVIEW_ITEM *item)
{
    if (!item) return ((void*)0);

    while (item->lastChild)
    {
       if (item->state & TVIS_EXPANDED)
          item = item->lastChild;
       else
          break;
    }

    if (item == infoPtr->root)
        return ((void*)0);

    return item;
}
