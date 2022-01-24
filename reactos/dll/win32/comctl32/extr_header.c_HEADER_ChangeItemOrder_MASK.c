#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t* order; TYPE_1__* items; } ;
struct TYPE_4__ {size_t iOrder; } ;
typedef  size_t INT ;
typedef  TYPE_1__ HEADER_ITEM ;
typedef  TYPE_2__ HEADER_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,size_t) ; 
 size_t FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t*,size_t) ; 
 size_t FUNC3 (size_t,size_t) ; 

__attribute__((used)) static void
FUNC4(const HEADER_INFO *infoPtr, INT iItem, INT iNewOrder)
{
    HEADER_ITEM *lpItem = &infoPtr->items[iItem];
    INT i, nMin, nMax;

    FUNC0("%d: %d->%d\n", iItem, lpItem->iOrder, iNewOrder);
    if (lpItem->iOrder < iNewOrder)
    {
        FUNC2(&infoPtr->order[lpItem->iOrder],
               &infoPtr->order[lpItem->iOrder + 1],
               (iNewOrder - lpItem->iOrder) * sizeof(INT));
    }
    if (iNewOrder < lpItem->iOrder)
    {
        FUNC2(&infoPtr->order[iNewOrder + 1],
                &infoPtr->order[iNewOrder],
                (lpItem->iOrder - iNewOrder) * sizeof(INT));
    }
    infoPtr->order[iNewOrder] = iItem;
    nMin = FUNC3(lpItem->iOrder, iNewOrder);
    nMax = FUNC1(lpItem->iOrder, iNewOrder);
    for (i = nMin; i <= nMax; i++)
        infoPtr->items[infoPtr->order[i]].iOrder = i;
}