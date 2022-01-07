
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; struct TYPE_4__* nextSibling; struct TYPE_4__* parent; struct TYPE_4__* firstChild; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;
typedef int TREEVIEW_INFO ;


 int TVIS_EXPANDED ;

__attribute__((used)) static TREEVIEW_ITEM *
TREEVIEW_GetNextListItem(const TREEVIEW_INFO *infoPtr, const TREEVIEW_ITEM *tvItem)
{



    if ((tvItem->state & TVIS_EXPANDED) && tvItem->firstChild != ((void*)0))
    {
 return tvItem->firstChild;
    }





    if (tvItem->nextSibling)
 return tvItem->nextSibling;




    while (tvItem->parent)
    {
 tvItem = tvItem->parent;

 if (tvItem->nextSibling)
     return tvItem->nextSibling;
    }

    return ((void*)0);
}
