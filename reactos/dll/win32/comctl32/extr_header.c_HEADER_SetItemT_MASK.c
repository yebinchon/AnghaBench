#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int mask; scalar_t__ iOrder; } ;
struct TYPE_13__ {scalar_t__ uNumItem; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/ * items; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HEADER_ITEM ;
typedef  TYPE_1__ HEADER_INFO ;
typedef  TYPE_2__ HDITEMW ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int HDI_ORDER ; 
 int /*<<< orphan*/  HDN_ITEMCHANGEDW ; 
 int /*<<< orphan*/  HDN_ITEMCHANGINGW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,TYPE_2__ const*,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static LRESULT
FUNC8 (HEADER_INFO *infoPtr, INT nItem, const HDITEMW *phdi, BOOL bUnicode)
{
    HEADER_ITEM *lpItem;
    HDITEMW hdNotify;
    void *pvScratch;

    if (phdi == NULL)
	return FALSE;
    if ((nItem < 0) || (nItem >= (INT)infoPtr->uNumItem))
        return FALSE;

    FUNC6("[nItem=%d]\n", nItem);

    FUNC1(infoPtr, &hdNotify, phdi, bUnicode, &pvScratch);
    if (FUNC2(infoPtr, HDN_ITEMCHANGINGW, nItem, &hdNotify))
    {
        FUNC7(pvScratch);
        return FALSE;
    }

    lpItem = &infoPtr->items[nItem];
    FUNC4(lpItem, phdi->mask, phdi, bUnicode);

    if (phdi->mask & HDI_ORDER)
        if (phdi->iOrder >= 0 && phdi->iOrder < infoPtr->uNumItem)
            FUNC0(infoPtr, nItem, phdi->iOrder);

    FUNC2(infoPtr, HDN_ITEMCHANGEDW, nItem, &hdNotify);

    FUNC3 (infoPtr);

    FUNC5(infoPtr->hwndSelf, NULL, FALSE);

    FUNC7(pvScratch);
    return TRUE;
}