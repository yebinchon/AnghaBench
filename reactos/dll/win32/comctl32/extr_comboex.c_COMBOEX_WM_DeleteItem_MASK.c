#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_18__ {int /*<<< orphan*/  mask; } ;
struct TYPE_17__ {struct TYPE_17__* next; } ;
struct TYPE_16__ {scalar_t__ nb_items; TYPE_4__* items; } ;
struct TYPE_15__ {scalar_t__ itemID; int /*<<< orphan*/  itemData; int /*<<< orphan*/  hwndItem; int /*<<< orphan*/  CtlID; int /*<<< orphan*/  CtlType; } ;
struct TYPE_14__ {TYPE_5__ ceItem; } ;
typedef  TYPE_1__ NMCOMBOBOXEXW ;
typedef  TYPE_2__ DELETEITEMSTRUCT ;
typedef  TYPE_3__ COMBOEX_INFO ;
typedef  TYPE_4__ CBE_ITEMDATA ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CBEN_DELETEITEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC7 (COMBOEX_INFO *infoPtr, DELETEITEMSTRUCT const *dis)
{
    CBE_ITEMDATA *item, *olditem;
    NMCOMBOBOXEXW nmcit;
    UINT i;

    FUNC5("CtlType=%08x, CtlID=%08x, itemID=%08x, hwnd=%p, data=%08lx\n",
	  dis->CtlType, dis->CtlID, dis->itemID, dis->hwndItem, dis->itemData);

    if (dis->itemID >= infoPtr->nb_items) return FALSE;

    olditem = infoPtr->items;
    i = infoPtr->nb_items - 1;

    if (i == dis->itemID) {
	infoPtr->items = infoPtr->items->next;
    }
    else {
	item = olditem;
	i--;

	/* find the prior item in the list */
	while (item->next && (i > dis->itemID)) {
	    item = item->next;
	    i--;
	}
	if (!item->next || (i != dis->itemID)) {
	    FUNC3("COMBOBOXEX item structures broken. Please report!\n");
	    return FALSE;
	}
	olditem = item->next;
	item->next = item->next->next;
    }
    infoPtr->nb_items--;

    FUNC6 (&nmcit.ceItem, 0, sizeof(nmcit.ceItem));
    nmcit.ceItem.mask=~0;
    FUNC0 (olditem, &nmcit.ceItem);
    FUNC2 (infoPtr, CBEN_DELETEITEM, &nmcit);

    FUNC1(olditem);
    FUNC4(olditem);

    return TRUE;
}