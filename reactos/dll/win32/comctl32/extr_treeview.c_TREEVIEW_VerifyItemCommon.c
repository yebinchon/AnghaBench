
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ parent; struct TYPE_3__ const* nextSibling; struct TYPE_3__ const* prevSibling; struct TYPE_3__ const* lastChild; struct TYPE_3__ const* firstChild; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;
typedef int TREEVIEW_INFO ;


 int assert (int) ;

__attribute__((used)) static inline void TREEVIEW_VerifyItemCommon(TREEVIEW_INFO *infoPtr,
          const TREEVIEW_ITEM *item)
{
    assert(infoPtr != ((void*)0));
    assert(item != ((void*)0));


    assert((item->firstChild == ((void*)0)) == (item->lastChild == ((void*)0)));

    assert(item->firstChild != item);
    assert(item->lastChild != item);

    if (item->firstChild)
    {
 assert(item->firstChild->parent == item);
 assert(item->firstChild->prevSibling == ((void*)0));
    }

    if (item->lastChild)
    {
 assert(item->lastChild->parent == item);
 assert(item->lastChild->nextSibling == ((void*)0));
    }

    assert(item->nextSibling != item);
    if (item->nextSibling)
    {
 assert(item->nextSibling->parent == item->parent);
 assert(item->nextSibling->prevSibling == item);
    }

    assert(item->prevSibling != item);
    if (item->prevSibling)
    {
 assert(item->prevSibling->parent == item->parent);
 assert(item->prevSibling->nextSibling == item);
    }
}
