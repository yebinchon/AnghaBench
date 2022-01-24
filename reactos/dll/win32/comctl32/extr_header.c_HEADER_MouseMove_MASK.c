#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tme ;
typedef  int UINT ;
struct TYPE_29__ {scalar_t__ left; scalar_t__ right; } ;
struct TYPE_28__ {int dwStyle; scalar_t__ iHotItem; size_t iMoveItem; scalar_t__ xTrackOffset; scalar_t__ xOldTrack; int /*<<< orphan*/  hwndSelf; void* bDragging; TYPE_4__* items; scalar_t__ bTracking; scalar_t__ bPressed; scalar_t__ bCaptured; } ;
struct TYPE_27__ {scalar_t__ bDown; TYPE_9__ rect; scalar_t__ cxy; } ;
struct TYPE_26__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_25__ {scalar_t__ left; } ;
struct TYPE_24__ {int cbSize; int /*<<< orphan*/  hwndTrack; int /*<<< orphan*/  dwFlags; } ;
typedef  TYPE_1__ TRACKMOUSEEVENT ;
typedef  scalar_t__ SHORT ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  TYPE_4__ HEADER_ITEM ;
typedef  TYPE_5__ HEADER_INFO ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDI_WIDTH ; 
 int /*<<< orphan*/  HDN_BEGINDRAG ; 
 int /*<<< orphan*/  HDN_ITEMCHANGEDW ; 
 int /*<<< orphan*/  HDN_ITEMCHANGINGW ; 
 int /*<<< orphan*/  HDN_TRACKW ; 
 int HDS_BUTTONS ; 
 int HDS_DRAGDROP ; 
 int HDS_FULLDRAG ; 
 int HDS_HOTTRACK ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_5__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_3__*,int*,scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int HHT_ONDIVIDER ; 
 int HHT_ONDIVOPEN ; 
 int HHT_ONHEADER ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_9__*,scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TME_LEAVE ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT
FUNC25 (HEADER_INFO *infoPtr, LPARAM lParam)
{
    POINT pt;
    UINT  flags;
    INT   nItem, nWidth;
    HDC   hdc;
    /* With theming, hottracking is always enabled */
    BOOL  hotTrackEnabled =
        ((infoPtr->dwStyle & HDS_BUTTONS) && (infoPtr->dwStyle & HDS_HOTTRACK))
        || (FUNC3 (infoPtr->hwndSelf) != NULL);
    INT oldHotItem = infoPtr->iHotItem;

    pt.x = (INT)(SHORT)FUNC19(lParam);
    pt.y = (INT)(SHORT)FUNC13(lParam);
    FUNC6 (infoPtr, &pt, &flags, &nItem);

    if (hotTrackEnabled) {
	if (flags & (HHT_ONHEADER | HHT_ONDIVIDER | HHT_ONDIVOPEN))
	    infoPtr->iHotItem = nItem;
	else
	    infoPtr->iHotItem = -1;
    }

    if (infoPtr->bCaptured) {
        /* check if we should drag the header */
	if (infoPtr->bPressed && !infoPtr->bDragging && (infoPtr->dwStyle & HDS_DRAGDROP)
	    && FUNC7(infoPtr, &pt))
	{
            if (!FUNC9(infoPtr, HDN_BEGINDRAG, infoPtr->iMoveItem, NULL))
	    {
		HIMAGELIST hDragItem = FUNC4(infoPtr, infoPtr->iMoveItem);
		if (hDragItem != NULL)
		{
		    HEADER_ITEM *lpItem = &infoPtr->items[infoPtr->iMoveItem];
		    FUNC22("Starting item drag\n");
		    FUNC14(hDragItem, 0, pt.x - lpItem->rect.left, 0);
		    FUNC17(TRUE);
		    FUNC15(hDragItem);
		    infoPtr->bDragging = TRUE;
		}
	    }
	}
	
	if (infoPtr->bDragging)
	{
	    POINT drag;
	    drag.x = pt.x;
	    drag.y = 0;
	    FUNC0(infoPtr->hwndSelf, &drag);
	    FUNC16(drag.x, drag.y);
	    FUNC11(infoPtr, TRUE, lParam);
	}
	
	if (infoPtr->bPressed && !infoPtr->bDragging) {
            BOOL oldState = infoPtr->items[infoPtr->iMoveItem].bDown;
	    if ((nItem == infoPtr->iMoveItem) && (flags == HHT_ONHEADER))
		infoPtr->items[infoPtr->iMoveItem].bDown = TRUE;
	    else
		infoPtr->items[infoPtr->iMoveItem].bDown = FALSE;
            if (oldState != infoPtr->items[infoPtr->iMoveItem].bDown) {
                hdc = FUNC2 (infoPtr->hwndSelf);
	        FUNC8 (infoPtr, infoPtr->iMoveItem);
	        FUNC20 (infoPtr->hwndSelf, hdc);
            }

	    FUNC22("Moving pressed item %d.\n", infoPtr->iMoveItem);
	}
	else if (infoPtr->bTracking) {
	    if (infoPtr->dwStyle & HDS_FULLDRAG) {
                HEADER_ITEM *lpItem = &infoPtr->items[infoPtr->iMoveItem];
                nWidth = pt.x - lpItem->rect.left + infoPtr->xTrackOffset;
                if (!FUNC10(infoPtr, HDN_ITEMCHANGINGW, infoPtr->iMoveItem, HDI_WIDTH, nWidth))
		{
                    INT nOldWidth = lpItem->rect.right - lpItem->rect.left;
                    RECT rcClient;
                    RECT rcScroll;
                    
                    if (nWidth < 0) nWidth = 0;
                    infoPtr->items[infoPtr->iMoveItem].cxy = nWidth;
                    FUNC12(infoPtr);
                    
                    FUNC1(infoPtr->hwndSelf, &rcClient);
                    rcScroll = rcClient;
                    rcScroll.left = lpItem->rect.left + nOldWidth;
                    FUNC21(infoPtr->hwndSelf, nWidth - nOldWidth, 0, &rcScroll, &rcClient, NULL, NULL, 0);
                    FUNC18(infoPtr->hwndSelf, &lpItem->rect, FALSE);
                    FUNC24(infoPtr->hwndSelf);
                    
                    FUNC10(infoPtr, HDN_ITEMCHANGEDW, infoPtr->iMoveItem, HDI_WIDTH, nWidth);
		}
	    }
	    else {
                INT iTrackWidth;
		hdc = FUNC2 (infoPtr->hwndSelf);
		FUNC5 (infoPtr, hdc, infoPtr->xOldTrack);
		infoPtr->xOldTrack = pt.x + infoPtr->xTrackOffset;
		if (infoPtr->xOldTrack < infoPtr->items[infoPtr->iMoveItem].rect.left)
		    infoPtr->xOldTrack = infoPtr->items[infoPtr->iMoveItem].rect.left;
		FUNC5 (infoPtr, hdc, infoPtr->xOldTrack);
		FUNC20 (infoPtr->hwndSelf, hdc);
                iTrackWidth = infoPtr->xOldTrack - infoPtr->items[infoPtr->iMoveItem].rect.left;
                /* FIXME: should stop tracking if HDN_TRACK returns TRUE */
                FUNC10(infoPtr, HDN_TRACKW, infoPtr->iMoveItem, HDI_WIDTH, iTrackWidth);
	    }

	    FUNC22("Tracking item %d.\n", infoPtr->iMoveItem);
	}
    }

    if (hotTrackEnabled) {
        TRACKMOUSEEVENT tme;
        if (oldHotItem != infoPtr->iHotItem && !infoPtr->bDragging) {
	    hdc = FUNC2 (infoPtr->hwndSelf);
	    if (oldHotItem != -1) FUNC8 (infoPtr, oldHotItem);
	    if (infoPtr->iHotItem != -1) FUNC8 (infoPtr, infoPtr->iHotItem);
	    FUNC20 (infoPtr->hwndSelf, hdc);
        }
        tme.cbSize = sizeof( tme );
        tme.dwFlags = TME_LEAVE;
        tme.hwndTrack = infoPtr->hwndSelf;
        FUNC23( &tme );
    }

    return 0;
}