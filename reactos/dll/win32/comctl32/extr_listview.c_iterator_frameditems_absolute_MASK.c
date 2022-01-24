#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ lower; scalar_t__ upper; } ;
struct TYPE_25__ {int nSpecial; int /*<<< orphan*/  ranges; TYPE_3__ range; } ;
struct TYPE_21__ {int bottom; int top; } ;
struct TYPE_24__ {scalar_t__ nItemCount; scalar_t__ uView; int nFocusedItem; int nItemWidth; int nItemHeight; TYPE_1__ rcList; int /*<<< orphan*/  hdpaPosY; int /*<<< orphan*/  hdpaPosX; } ;
struct TYPE_22__ {int left; int top; int right; int bottom; } ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  RANGES ;
typedef  TYPE_3__ RANGE ;
typedef  void* LONG_PTR ;
typedef  TYPE_4__ LISTVIEW_INFO ;
typedef  TYPE_5__ ITERATOR ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_2__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__ const*,int,TYPE_2__*) ; 
 scalar_t__ LV_VIEW_DETAILS ; 
 scalar_t__ LV_VIEW_ICON ; 
 scalar_t__ LV_VIEW_SMALLICON ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__ const*) ; 

__attribute__((used)) static BOOL FUNC14(ITERATOR* i, const LISTVIEW_INFO* infoPtr, const RECT *frame)
{
    RECT rcItem, rcTemp;
    RANGES ranges;

    FUNC3("(frame=%s)\n", FUNC13(frame));

    /* in case we fail, we want to return an empty iterator */
    FUNC5(i);

    if (infoPtr->nItemCount == 0)
        return TRUE;

    if (infoPtr->uView == LV_VIEW_ICON || infoPtr->uView == LV_VIEW_SMALLICON)
    {
	INT nItem;
	
	if (infoPtr->uView == LV_VIEW_ICON && infoPtr->nFocusedItem != -1)
	{
	    FUNC2(infoPtr, infoPtr->nFocusedItem, &rcItem);
	    if (FUNC1(&rcTemp, &rcItem, frame))
		i->nSpecial = infoPtr->nFocusedItem;
	}
	if (!(ranges = FUNC12(50))) return FALSE;
	FUNC7(i, ranges);
	/* to do better here, we need to have PosX, and PosY sorted */
	FUNC3("building icon ranges:\n");
	for (nItem = 0; nItem < infoPtr->nItemCount; nItem++)
	{
            rcItem.left = (LONG_PTR)FUNC0(infoPtr->hdpaPosX, nItem);
	    rcItem.top = (LONG_PTR)FUNC0(infoPtr->hdpaPosY, nItem);
	    rcItem.right = rcItem.left + infoPtr->nItemWidth;
	    rcItem.bottom = rcItem.top + infoPtr->nItemHeight;
	    if (FUNC1(&rcTemp, &rcItem, frame))
		FUNC11(i->ranges, nItem);
	}
	return TRUE;
    }
    else if (infoPtr->uView == LV_VIEW_DETAILS)
    {
	RANGE range;
	
	if (frame->left >= infoPtr->nItemWidth) return TRUE;
	if (frame->top >= infoPtr->nItemHeight * infoPtr->nItemCount) return TRUE;
	
	range.lower = FUNC8(frame->top / infoPtr->nItemHeight, 0);
	range.upper = FUNC9((frame->bottom - 1) / infoPtr->nItemHeight, infoPtr->nItemCount - 1) + 1;
	if (range.upper <= range.lower) return TRUE;
	FUNC6(i, range);
	FUNC3("    report=%s\n", FUNC4(&i->range));
    }
    else
    {
	INT nPerCol = FUNC8((infoPtr->rcList.bottom - infoPtr->rcList.top) / infoPtr->nItemHeight, 1);
	INT nFirstRow = FUNC8(frame->top / infoPtr->nItemHeight, 0);
	INT nLastRow = FUNC9((frame->bottom - 1) / infoPtr->nItemHeight, nPerCol - 1);
	INT nFirstCol;
	INT nLastCol;
	INT lower;
	RANGE item_range;
	INT nCol;

	if (infoPtr->nItemWidth)
	{
	    nFirstCol = FUNC8(frame->left / infoPtr->nItemWidth, 0);
            nLastCol  = FUNC9((frame->right - 1) / infoPtr->nItemWidth, (infoPtr->nItemCount + nPerCol - 1) / nPerCol);
	}
	else
	{
	    nFirstCol = FUNC8(frame->left, 0);
            nLastCol  = FUNC9(frame->right - 1, (infoPtr->nItemCount + nPerCol - 1) / nPerCol);
	}

	lower = nFirstCol * nPerCol + nFirstRow;

	FUNC3("nPerCol=%d, nFirstRow=%d, nLastRow=%d, nFirstCol=%d, nLastCol=%d, lower=%d\n",
	      nPerCol, nFirstRow, nLastRow, nFirstCol, nLastCol, lower);
	
	if (nLastCol < nFirstCol || nLastRow < nFirstRow) return TRUE;

	if (!(ranges = FUNC12(nLastCol - nFirstCol + 1))) return FALSE;
	FUNC7(i, ranges);
	FUNC3("building list ranges:\n");
	for (nCol = nFirstCol; nCol <= nLastCol; nCol++)
	{
	    item_range.lower = nCol * nPerCol + nFirstRow;
	    if(item_range.lower >= infoPtr->nItemCount) break;
	    item_range.upper = FUNC9(nCol * nPerCol + nLastRow + 1, infoPtr->nItemCount);
	    FUNC3("   list=%s\n", FUNC4(&item_range));
	    FUNC10(i->ranges, item_range);
	}
    }

    return TRUE;
}