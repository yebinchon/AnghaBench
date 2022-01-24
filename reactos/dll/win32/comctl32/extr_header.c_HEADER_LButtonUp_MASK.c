#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_22__ {int left; } ;
struct TYPE_21__ {size_t iMoveItem; int iHotDivider; int uNumItem; int dwStyle; int xTrackOffset; void* bCaptured; int /*<<< orphan*/  hwndSelf; TYPE_2__* items; int /*<<< orphan*/  xOldTrack; void* bTracking; void* bPressed; void* bDragging; void* bRectsValid; } ;
struct TYPE_20__ {int iOrder; int cxy; TYPE_4__ rect; void* bDown; } ;
struct TYPE_19__ {int x; int y; } ;
typedef  TYPE_1__ POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int INT ;
typedef  TYPE_2__ HEADER_ITEM ;
typedef  TYPE_3__ HEADER_INFO ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDI_ORDER ; 
 int /*<<< orphan*/  HDI_WIDTH ; 
 int /*<<< orphan*/  HDN_ENDDRAG ; 
 int /*<<< orphan*/  HDN_ENDTRACKW ; 
 int /*<<< orphan*/  HDN_ITEMCHANGEDW ; 
 int /*<<< orphan*/  HDN_ITEMCHANGINGW ; 
 int /*<<< orphan*/  HDN_ITEMCLICKW ; 
 int HDS_DRAGDROP ; 
 int HDS_FULLDRAG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,void*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_4__*,void*) ; 
 int /*<<< orphan*/  NM_RELEASEDCAPTURE ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,size_t) ; 
 void* TRUE ; 

__attribute__((used)) static LRESULT
FUNC18 (HEADER_INFO *infoPtr, INT x, INT y)
{
    POINT pt;
    UINT  flags;
    INT   nItem;
    HDC   hdc;

    pt.x = x;
    pt.y = y;
    FUNC4 (infoPtr, &pt, &flags, &nItem);

    if (infoPtr->bPressed) {

	infoPtr->items[infoPtr->iMoveItem].bDown = FALSE;

	if (infoPtr->bDragging)
	{
            HEADER_ITEM *lpItem = &infoPtr->items[infoPtr->iMoveItem];
            INT iNewOrder;
            
	    FUNC12(FALSE);
	    FUNC13();

            if (infoPtr->iHotDivider == -1)
                iNewOrder = -1;
            else if (infoPtr->iHotDivider == infoPtr->uNumItem)
                iNewOrder = infoPtr->uNumItem-1;
            else
	    {
                iNewOrder = FUNC3(infoPtr, infoPtr->iHotDivider);
                if (iNewOrder > lpItem->iOrder)
                    iNewOrder--;
            }

            if (iNewOrder != -1 &&
                !FUNC8(infoPtr, HDN_ENDDRAG, infoPtr->iMoveItem, HDI_ORDER, iNewOrder))
            {
                FUNC1(infoPtr, infoPtr->iMoveItem, iNewOrder);
		infoPtr->bRectsValid = FALSE;
		FUNC14(infoPtr->hwndSelf, NULL, FALSE);
	    }
	    else
		FUNC14(infoPtr->hwndSelf, &infoPtr->items[infoPtr->iMoveItem].rect, FALSE);

            infoPtr->bDragging = FALSE;
            FUNC10(infoPtr, FALSE, -1);
	}
	else
	{
	    hdc = FUNC0 (infoPtr->hwndSelf);
	    FUNC6 (infoPtr, infoPtr->iMoveItem);
	    FUNC16 (infoPtr->hwndSelf, hdc);

	    if (!(infoPtr->dwStyle & HDS_DRAGDROP) || !FUNC5(infoPtr, &pt))
		FUNC7(infoPtr, HDN_ITEMCLICKW, infoPtr->iMoveItem, NULL);
	}

	FUNC17("Released item %d.\n", infoPtr->iMoveItem);
	infoPtr->bPressed = FALSE;
    }
    else if (infoPtr->bTracking) {
        INT iNewWidth = pt.x - infoPtr->items[infoPtr->iMoveItem].rect.left + infoPtr->xTrackOffset;
        if (iNewWidth < 0)
	    iNewWidth = 0;
	FUNC17("End tracking item %d.\n", infoPtr->iMoveItem);
	infoPtr->bTracking = FALSE;

        FUNC8(infoPtr, HDN_ENDTRACKW, infoPtr->iMoveItem, HDI_WIDTH, iNewWidth);

        if (!(infoPtr->dwStyle & HDS_FULLDRAG)) {
	    hdc = FUNC0 (infoPtr->hwndSelf);
	    FUNC2 (infoPtr, hdc, infoPtr->xOldTrack);
            FUNC16 (infoPtr->hwndSelf, hdc);
        }
          
        if (!FUNC8(infoPtr, HDN_ITEMCHANGINGW, infoPtr->iMoveItem, HDI_WIDTH, iNewWidth))
        {
            infoPtr->items[infoPtr->iMoveItem].cxy = iNewWidth;
            FUNC8(infoPtr, HDN_ITEMCHANGEDW, infoPtr->iMoveItem, HDI_WIDTH, iNewWidth);
        }

	FUNC11 (infoPtr);
	FUNC14(infoPtr->hwndSelf, NULL, TRUE);
    }

    if (infoPtr->bCaptured) {
	infoPtr->bCaptured = FALSE;
	FUNC15 ();
	FUNC9 (infoPtr, NM_RELEASEDCAPTURE);
    }

    return 0;
}