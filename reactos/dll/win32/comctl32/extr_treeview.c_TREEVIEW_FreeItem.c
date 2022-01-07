
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * insertMarkItem; int * dropItem; int * firstVisible; int * focusedItem; int * hotItem; int * selectedItem; int items; } ;
typedef int TREEVIEW_ITEM ;
typedef TYPE_1__ TREEVIEW_INFO ;


 int DPA_DeletePtr (int ,int ) ;
 int DPA_GetPtrIndex (int ,int *) ;
 int heap_free (int *) ;

__attribute__((used)) static void
TREEVIEW_FreeItem(TREEVIEW_INFO *infoPtr, TREEVIEW_ITEM *item)
{
    DPA_DeletePtr(infoPtr->items, DPA_GetPtrIndex(infoPtr->items, item));
    if (infoPtr->selectedItem == item)
        infoPtr->selectedItem = ((void*)0);
    if (infoPtr->hotItem == item)
        infoPtr->hotItem = ((void*)0);
    if (infoPtr->focusedItem == item)
        infoPtr->focusedItem = ((void*)0);
    if (infoPtr->firstVisible == item)
        infoPtr->firstVisible = ((void*)0);
    if (infoPtr->dropItem == item)
        infoPtr->dropItem = ((void*)0);
    if (infoPtr->insertMarkItem == item)
        infoPtr->insertMarkItem = ((void*)0);
    heap_free(item);
}
