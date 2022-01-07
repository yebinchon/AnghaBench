
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* nextSibling; struct TYPE_4__* firstChild; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;
typedef int TREEVIEW_INFO ;


 int TREEVIEW_VerifyItem (int *,TYPE_1__ const*) ;
 int assert (int ) ;

__attribute__((used)) static inline void
TREEVIEW_VerifyChildren(TREEVIEW_INFO *infoPtr, const TREEVIEW_ITEM *item)
{
    const TREEVIEW_ITEM *child;
    assert(item != ((void*)0));

    for (child = item->firstChild; child != ((void*)0); child = child->nextSibling)
 TREEVIEW_VerifyItem(infoPtr, child);
}
