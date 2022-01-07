
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int items; } ;
struct TYPE_10__ {scalar_t__ iLevel; struct TYPE_10__ const* parent; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;
typedef TYPE_2__ TREEVIEW_INFO ;


 int DPA_GetPtrIndex (int ,TYPE_1__ const*) ;
 int TREEVIEW_VerifyChildren (TYPE_2__*,TYPE_1__ const*) ;
 int TREEVIEW_VerifyItemCommon (TYPE_2__*,TYPE_1__ const*) ;
 int assert (int) ;

__attribute__((used)) static inline void
TREEVIEW_VerifyItem(TREEVIEW_INFO *infoPtr, const TREEVIEW_ITEM *item)
{
    assert(item != ((void*)0));

    assert(item->parent != ((void*)0));
    assert(item->parent != item);
    assert(item->iLevel == item->parent->iLevel + 1);

    assert(DPA_GetPtrIndex(infoPtr->items, item) != -1);

    TREEVIEW_VerifyItemCommon(infoPtr, item);

    TREEVIEW_VerifyChildren(infoPtr, item);
}
