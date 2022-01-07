
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* lastChild; struct TYPE_5__* firstChild; struct TYPE_5__* nextSibling; struct TYPE_5__* prevSibling; struct TYPE_5__* parent; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;


 int assert (int) ;

__attribute__((used)) static void
TREEVIEW_InsertBefore(TREEVIEW_ITEM *newItem, TREEVIEW_ITEM *sibling,
        TREEVIEW_ITEM *parent)
{
    assert(parent != ((void*)0));

    if (sibling != ((void*)0))
    {
 assert(sibling->parent == parent);

 if (sibling->prevSibling != ((void*)0))
     sibling->prevSibling->nextSibling = newItem;

 newItem->prevSibling = sibling->prevSibling;
 sibling->prevSibling = newItem;
    }
    else
       newItem->prevSibling = ((void*)0);

    newItem->nextSibling = sibling;

    if (parent->firstChild == sibling)
 parent->firstChild = newItem;

    if (parent->lastChild == ((void*)0))
 parent->lastChild = newItem;
}
