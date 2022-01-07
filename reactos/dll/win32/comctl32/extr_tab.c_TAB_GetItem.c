
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ uNumItem; int items; } ;
typedef int TAB_ITEM ;
typedef TYPE_1__ TAB_INFO ;
typedef scalar_t__ INT ;


 int * DPA_GetPtr (int ,scalar_t__) ;
 int assert (int) ;

__attribute__((used)) static inline TAB_ITEM* TAB_GetItem(const TAB_INFO *infoPtr, INT i)
{
    assert(i >= 0 && i < infoPtr->uNumItem);
    return DPA_GetPtr(infoPtr->items, i);
}
