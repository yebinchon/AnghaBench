
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cChildren; int * lastChild; struct TYPE_4__* firstChild; struct TYPE_4__* nextSibling; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;
typedef int TREEVIEW_INFO ;


 int TREEVIEW_RemoveItem (int *,TYPE_1__*) ;
 int assert (int) ;

__attribute__((used)) static void
TREEVIEW_RemoveAllChildren(TREEVIEW_INFO *infoPtr, const TREEVIEW_ITEM *parentItem)
{
    TREEVIEW_ITEM *kill = parentItem->firstChild;

    while (kill != ((void*)0))
    {
 TREEVIEW_ITEM *next = kill->nextSibling;

 TREEVIEW_RemoveItem(infoPtr, kill);

 kill = next;
    }

    assert(parentItem->cChildren <= 0);
    assert(parentItem->firstChild == ((void*)0));
    assert(parentItem->lastChild == ((void*)0));
}
