
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_9__ {int items; } ;
struct TYPE_8__ {TYPE_2__ const* infoPtr; scalar_t__ iExpandedImage; scalar_t__ iSelectedImage; scalar_t__ iImage; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;
typedef TYPE_2__ TREEVIEW_INFO ;


 int DPA_InsertPtr (int ,int ,TYPE_1__*) ;
 int INT_MAX ;
 scalar_t__ I_IMAGENONE ;
 TYPE_1__* heap_alloc_zero (int) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static TREEVIEW_ITEM *
TREEVIEW_AllocateItem(const TREEVIEW_INFO *infoPtr)
{
    TREEVIEW_ITEM *newItem = heap_alloc_zero(sizeof(*newItem));

    if (!newItem)
 return ((void*)0);





    newItem->iImage = 0;
    newItem->iSelectedImage = 0;
    newItem->iExpandedImage = (WORD)I_IMAGENONE;
    newItem->infoPtr = infoPtr;

    if (DPA_InsertPtr(infoPtr->items, INT_MAX, newItem) == -1)
    {
        heap_free(newItem);
        return ((void*)0);
    }

    return newItem;
}
