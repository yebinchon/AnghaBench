
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ root; } ;
struct TYPE_8__ {int state; scalar_t__ parent; int * lastChild; struct TYPE_8__* prevSibling; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;
typedef TYPE_2__ TREEVIEW_INFO ;


 TYPE_1__* TREEVIEW_GetLastListItem (TYPE_2__ const*,int *) ;
 int TVIS_EXPANDED ;

__attribute__((used)) static TREEVIEW_ITEM *
TREEVIEW_GetPrevListItem(const TREEVIEW_INFO *infoPtr, const TREEVIEW_ITEM *tvItem)
{
    if (tvItem->prevSibling)
    {

 TREEVIEW_ITEM *upItem = tvItem->prevSibling;

 if ((upItem->state & TVIS_EXPANDED) && upItem->lastChild != ((void*)0))
     return TREEVIEW_GetLastListItem(infoPtr, upItem->lastChild);
 else
     return upItem;
    }
    else
    {

 return (tvItem->parent != infoPtr->root) ? tvItem->parent : ((void*)0);
    }
}
