#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int right; int left; } ;
struct TYPE_21__ {scalar_t__ uView; int nItemCount; int nItemWidth; int /*<<< orphan*/  hwndSelf; scalar_t__ hwndHeader; int /*<<< orphan*/  hdpaColumns; TYPE_1__ rcList; } ;
struct TYPE_20__ {int right; int left; } ;
struct TYPE_19__ {int cbSize; int nPage; int nMax; int fMask; int /*<<< orphan*/  nPos; } ;
typedef  TYPE_2__ SCROLLINFO ;
typedef  TYPE_3__ RECT ;
typedef  TYPE_4__ LISTVIEW_INFO ;
typedef  int INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDM_ORDERTOINDEX ; 
 int FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 scalar_t__ LV_VIEW_DETAILS ; 
 scalar_t__ LV_VIEW_LIST ; 
 int /*<<< orphan*/  SB_HORZ ; 
 int SIF_PAGE ; 
 int SIF_POS ; 
 int SIF_RANGE ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int FUNC13 (TYPE_2__*) ; 
 int FUNC14 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static INT FUNC15(LISTVIEW_INFO *infoPtr)
{
    SCROLLINFO horzInfo;
    INT dx;

    FUNC12(&horzInfo, sizeof(SCROLLINFO));
    horzInfo.cbSize = sizeof(SCROLLINFO);
    horzInfo.nPage = infoPtr->rcList.right - infoPtr->rcList.left;

    /* for now, we'll set info.nMax to the _count_, and adjust it later */
    if (infoPtr->uView == LV_VIEW_LIST)
    {
	INT nPerCol = FUNC3(infoPtr);
	horzInfo.nMax = (infoPtr->nItemCount + nPerCol - 1) / nPerCol;

	/* scroll by at least one column per page */
	if(horzInfo.nPage < infoPtr->nItemWidth)
		horzInfo.nPage = infoPtr->nItemWidth;

	if (infoPtr->nItemWidth)
	    horzInfo.nPage /= infoPtr->nItemWidth;
    }
    else if (infoPtr->uView == LV_VIEW_DETAILS)
    {
	horzInfo.nMax = infoPtr->nItemWidth;
    }
    else /* LV_VIEW_ICON, or LV_VIEW_SMALLICON */
    {
	RECT rcView;

	if (FUNC5(infoPtr, &rcView)) horzInfo.nMax = rcView.right - rcView.left;
    }

    if (FUNC6(infoPtr))
    {
	if (FUNC0(infoPtr->hdpaColumns))
	{
	    RECT rcHeader;
	    INT index;

	    index = FUNC9(infoPtr->hwndHeader, HDM_ORDERTOINDEX,
                                 FUNC0(infoPtr->hdpaColumns) - 1, 0);

	    FUNC4(infoPtr, index, &rcHeader);
	    horzInfo.nMax = rcHeader.right;
	    FUNC11("horzInfo.nMax=%d\n", horzInfo.nMax);
	}
    }

    horzInfo.fMask = SIF_RANGE | SIF_PAGE;
    horzInfo.nMax = FUNC14(horzInfo.nMax - 1, 0);
#ifdef __REACTOS__ /* CORE-16466 part 1 of 4 */
    horzInfo.nMax = (horzInfo.nPage == 0 ? 0 : horzInfo.nMax);
#endif
    dx = FUNC2(infoPtr->hwndSelf, SB_HORZ);
    dx -= FUNC10(infoPtr->hwndSelf, SB_HORZ, &horzInfo, TRUE);
    FUNC11("horzInfo=%s\n", FUNC13(&horzInfo));

    /* Update the Header Control */
    if (infoPtr->hwndHeader)
    {
	horzInfo.fMask = SIF_POS;
	FUNC1(infoPtr->hwndSelf, SB_HORZ, &horzInfo);
	FUNC7(infoPtr, horzInfo.nPos);
    }

    FUNC8(infoPtr);
    return dx;
}