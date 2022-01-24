#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_13__ {size_t x; size_t y; } ;
struct TYPE_14__ {int dwStyle; size_t iMoveItem; size_t xTrackOffset; size_t xOldTrack; int /*<<< orphan*/  hwndSelf; TYPE_2__* items; void* bTracking; void* bCaptured; TYPE_3__ ptLButtonDown; int /*<<< orphan*/  bDragging; void* bPressed; } ;
struct TYPE_11__ {size_t right; } ;
struct TYPE_12__ {size_t cxy; TYPE_1__ rect; void* bDown; } ;
typedef  TYPE_3__ POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  size_t INT ;
typedef  TYPE_4__ HEADER_INFO ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDI_WIDTH ; 
 int /*<<< orphan*/  HDN_BEGINTRACKW ; 
 int HDS_BUTTONS ; 
 int HDS_FULLDRAG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*,scalar_t__*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ HHT_ONDIVIDER ; 
 scalar_t__ HHT_ONDIVOPEN ; 
 scalar_t__ HHT_ONHEADER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t) ; 
 void* TRUE ; 

__attribute__((used)) static LRESULT
FUNC8 (HEADER_INFO *infoPtr, INT x, INT y)
{
    POINT pt;
    UINT  flags;
    INT   nItem;
    HDC   hdc;

    pt.x = x;
    pt.y = y;
    FUNC2 (infoPtr, &pt, &flags, &nItem);

    if ((infoPtr->dwStyle & HDS_BUTTONS) && (flags == HHT_ONHEADER)) {
	FUNC6 (infoPtr->hwndSelf);
	infoPtr->bCaptured = TRUE;
	infoPtr->bPressed  = TRUE;
	infoPtr->bDragging = FALSE;
	infoPtr->iMoveItem = nItem;
	infoPtr->ptLButtonDown = pt;

	infoPtr->items[nItem].bDown = TRUE;

	/* Send WM_CUSTOMDRAW */
	hdc = FUNC0 (infoPtr->hwndSelf);
	FUNC3 (infoPtr, nItem);
	FUNC5 (infoPtr->hwndSelf, hdc);

	FUNC7("Pressed item %d.\n", nItem);
    }
    else if ((flags == HHT_ONDIVIDER) || (flags == HHT_ONDIVOPEN)) {
        INT iCurrWidth = infoPtr->items[nItem].cxy;
        if (!FUNC4(infoPtr, HDN_BEGINTRACKW, nItem, HDI_WIDTH, iCurrWidth))
        {
	    FUNC6 (infoPtr->hwndSelf);
	    infoPtr->bCaptured = TRUE;
	    infoPtr->bTracking = TRUE;
	    infoPtr->iMoveItem = nItem;
	    infoPtr->xTrackOffset = infoPtr->items[nItem].rect.right - pt.x;

	    if (!(infoPtr->dwStyle & HDS_FULLDRAG)) {
		infoPtr->xOldTrack = infoPtr->items[nItem].rect.right;
		hdc = FUNC0 (infoPtr->hwndSelf);
		FUNC1 (infoPtr, hdc, infoPtr->xOldTrack);
		FUNC5 (infoPtr->hwndSelf, hdc);
	    }

	    FUNC7("Begin tracking item %d.\n", nItem);
	}
    }

    return 0;
}