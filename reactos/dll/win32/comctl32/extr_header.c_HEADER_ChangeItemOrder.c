
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t* order; TYPE_1__* items; } ;
struct TYPE_4__ {size_t iOrder; } ;
typedef size_t INT ;
typedef TYPE_1__ HEADER_ITEM ;
typedef TYPE_2__ HEADER_INFO ;


 int TRACE (char*,size_t,size_t,size_t) ;
 size_t max (size_t,size_t) ;
 int memmove (size_t*,size_t*,size_t) ;
 size_t min (size_t,size_t) ;

__attribute__((used)) static void
HEADER_ChangeItemOrder(const HEADER_INFO *infoPtr, INT iItem, INT iNewOrder)
{
    HEADER_ITEM *lpItem = &infoPtr->items[iItem];
    INT i, nMin, nMax;

    TRACE("%d: %d->%d\n", iItem, lpItem->iOrder, iNewOrder);
    if (lpItem->iOrder < iNewOrder)
    {
        memmove(&infoPtr->order[lpItem->iOrder],
               &infoPtr->order[lpItem->iOrder + 1],
               (iNewOrder - lpItem->iOrder) * sizeof(INT));
    }
    if (iNewOrder < lpItem->iOrder)
    {
        memmove(&infoPtr->order[iNewOrder + 1],
                &infoPtr->order[iNewOrder],
                (lpItem->iOrder - iNewOrder) * sizeof(INT));
    }
    infoPtr->order[iNewOrder] = iItem;
    nMin = min(lpItem->iOrder, iNewOrder);
    nMax = max(lpItem->iOrder, iNewOrder);
    for (i = nMin; i <= nMax; i++)
        infoPtr->items[infoPtr->order[i]].iOrder = i;
}
