#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_19__ {int /*<<< orphan*/  mask; } ;
struct TYPE_18__ {int mask; int /*<<< orphan*/  lParam; int /*<<< orphan*/  iIndent; int /*<<< orphan*/  iOverlay; int /*<<< orphan*/  iSelectedImage; int /*<<< orphan*/  iImage; int /*<<< orphan*/  cchTextMax; void* pszText; struct TYPE_18__* next; } ;
struct TYPE_17__ {int iItem; int mask; int /*<<< orphan*/  lParam; int /*<<< orphan*/  iIndent; int /*<<< orphan*/  iOverlay; int /*<<< orphan*/  iSelectedImage; int /*<<< orphan*/  iImage; int /*<<< orphan*/  cchTextMax; void* pszText; } ;
struct TYPE_16__ {int nb_items; int /*<<< orphan*/  hwndCombo; TYPE_4__* items; } ;
struct TYPE_15__ {TYPE_5__ ceItem; } ;
typedef  TYPE_1__ NMCOMBOBOXEXW ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT_PTR ;
typedef  int INT ;
typedef  TYPE_2__ COMBOEX_INFO ;
typedef  TYPE_3__ COMBOBOXEXITEMW ;
typedef  TYPE_4__ CBE_ITEMDATA ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int CBEIF_IMAGE ; 
 int CBEIF_INDENT ; 
 int CBEIF_LPARAM ; 
 int CBEIF_OVERLAY ; 
 int CBEIF_SELECTEDIMAGE ; 
 int CBEIF_TEXT ; 
 int /*<<< orphan*/  CBEN_INSERTITEM ; 
 int /*<<< orphan*/  CB_INSERTSTRING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 void* LPSTR_TEXTCALLBACKW ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  comboex ; 
 scalar_t__ FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (void*,void*) ; 
 int FUNC13 (void*) ; 

__attribute__((used)) static INT FUNC14 (COMBOEX_INFO *infoPtr, COMBOBOXEXITEMW const *cit)
{
    INT_PTR index;
    CBE_ITEMDATA *item;
    NMCOMBOBOXEXW nmcit;

    FUNC8("\n");

    if (FUNC9(comboex)) FUNC2 (cit);

    /* get real index of item to insert */
    index = cit->iItem;
    if (index == -1) index = infoPtr->nb_items;
    if (index > infoPtr->nb_items) return -1;

    /* get zero-filled space and chain it in */
    if(!(item = FUNC0 (sizeof(*item)))) return -1;

    /* locate position to insert new item in */
    if (index == infoPtr->nb_items) {
        /* fast path for iItem = -1 */
        item->next = infoPtr->items;
	infoPtr->items = item;
    }
    else {
        INT i = infoPtr->nb_items-1;
	CBE_ITEMDATA *moving = infoPtr->items;

	while ((i > index) && moving) {
	    moving = moving->next;
	    i--;
	}
	if (!moving) {
	    FUNC5("COMBOBOXEX item structures broken. Please report!\n");
	    FUNC6(item);
	    return -1;
	}
	item->next = moving->next;
	moving->next = item;
    }

    /* fill in our hidden item structure */
    item->mask = cit->mask;
    if (item->mask & CBEIF_TEXT) {
	INT len = 0;

        if (FUNC10(cit->pszText)) len = FUNC13 (cit->pszText);
	if (len > 0) {
            item->pszText = FUNC0 ((len + 1)*sizeof(WCHAR));
	    if (!item->pszText) {
		FUNC6(item);
		return -1;
	    }
	    FUNC12 (item->pszText, cit->pszText);
	}
	else if (cit->pszText == LPSTR_TEXTCALLBACKW)
	    item->pszText = LPSTR_TEXTCALLBACKW;
        item->cchTextMax = cit->cchTextMax;
    }
    if (item->mask & CBEIF_IMAGE)
        item->iImage = cit->iImage;
    if (item->mask & CBEIF_SELECTEDIMAGE)
        item->iSelectedImage = cit->iSelectedImage;
    if (item->mask & CBEIF_OVERLAY)
        item->iOverlay = cit->iOverlay;
    if (item->mask & CBEIF_INDENT)
        item->iIndent = cit->iIndent;
    if (item->mask & CBEIF_LPARAM)
        item->lParam = cit->lParam;
    infoPtr->nb_items++;

    if (FUNC9(comboex)) FUNC3 (item);

    FUNC7 (infoPtr->hwndCombo, CB_INSERTSTRING, cit->iItem, (LPARAM)item);

    FUNC11 (&nmcit.ceItem, 0, sizeof(nmcit.ceItem));
    nmcit.ceItem.mask=~0;
    FUNC1 (item, &nmcit.ceItem);
    FUNC4 (infoPtr, CBEN_INSERTITEM, &nmcit);

    return index;

}