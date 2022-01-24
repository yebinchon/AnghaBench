#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_23__ {short x; short y; } ;
struct TYPE_19__ {int top; int bottom; } ;
struct TYPE_22__ {int fDraw; int /*<<< orphan*/  rcChevron; TYPE_2__ rcBand; } ;
struct TYPE_18__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_21__ {void* iGrabbedBand; int dwStyle; scalar_t__ hwndSelf; int fStatus; scalar_t__ iOldBand; scalar_t__ ichevronhotBand; TYPE_1__ dragStart; TYPE_1__ dragNow; } ;
struct TYPE_20__ {int cbSize; int dwFlags; scalar_t__ hwndTrack; scalar_t__ dwHoverTime; } ;
typedef  TYPE_3__ TRACKMOUSEEVENT ;
typedef  TYPE_4__ REBAR_INFO ;
typedef  TYPE_5__ REBAR_BAND ;
typedef  TYPE_6__ POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  void* INT ;

/* Variables and functions */
 int BEGIN_DRAG_ISSUED ; 
 int CCS_VERT ; 
 int DRAW_CHEVRONHOT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ RBHT_CHEVRON ; 
 int /*<<< orphan*/  RBN_BEGINDRAG ; 
 TYPE_5__* FUNC5 (TYPE_4__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_6__*,scalar_t__*,void**) ; 
 scalar_t__ FUNC9 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int TME_LEAVE ; 
 int TME_QUERY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ mindragx ; 
 scalar_t__ mindragy ; 

__attribute__((used)) static LRESULT
FUNC13 (REBAR_INFO *infoPtr, LPARAM lParam)
{
    REBAR_BAND *lpChevronBand;
    POINT ptMove;

    ptMove.x = (short)FUNC4(lParam);
    ptMove.y = (short)FUNC2(lParam);

    /* if we are currently dragging a band */
    if (infoPtr->iGrabbedBand >= 0)
    {
        REBAR_BAND *band;
        int yPtMove = (infoPtr->dwStyle & CCS_VERT ? ptMove.x : ptMove.y);

        if (FUNC1() != infoPtr->hwndSelf)
            FUNC0("We are dragging but haven't got capture?!?\n");

        band = FUNC5(infoPtr, infoPtr->iGrabbedBand);

        /* if mouse did not move much, exit */
        if ((FUNC12(ptMove.x - infoPtr->dragNow.x) <= mindragx) &&
            (FUNC12(ptMove.y - infoPtr->dragNow.y) <= mindragy)) return 0;

        /* on first significant mouse movement, issue notify */
        if (!(infoPtr->fStatus & BEGIN_DRAG_ISSUED)) {
            if (FUNC9 (infoPtr, -1, RBN_BEGINDRAG)) {
                /* Notify returned TRUE - abort drag */
                infoPtr->dragStart.x = 0;
                infoPtr->dragStart.y = 0;
                infoPtr->dragNow = infoPtr->dragStart;
                infoPtr->iGrabbedBand = -1;
                FUNC10 ();
                return 0;
            }
            infoPtr->fStatus |= BEGIN_DRAG_ISSUED;
        }

        /* Test for valid drag case - must not be first band in row */
        if ((yPtMove < band->rcBand.top) ||
              (yPtMove > band->rcBand.bottom)) {
            FUNC7 (infoPtr, &ptMove);
        }
        else {
            FUNC6 (infoPtr, &ptMove);
        }
    }
    else
    {
        INT iHitBand;
        UINT htFlags;
        TRACKMOUSEEVENT trackinfo;

        FUNC8(infoPtr, &ptMove, &htFlags, &iHitBand);

        if (infoPtr->iOldBand >= 0 && infoPtr->iOldBand == infoPtr->ichevronhotBand)
        {
            lpChevronBand = FUNC5(infoPtr, infoPtr->ichevronhotBand);
            if (lpChevronBand->fDraw & DRAW_CHEVRONHOT)
            {
                lpChevronBand->fDraw &= ~DRAW_CHEVRONHOT;
                FUNC3(infoPtr->hwndSelf, &lpChevronBand->rcChevron, TRUE);
            }
            infoPtr->ichevronhotBand = -2;
        }

        if (htFlags == RBHT_CHEVRON)
        {
            /* fill in the TRACKMOUSEEVENT struct */
            trackinfo.cbSize = sizeof(TRACKMOUSEEVENT);
            trackinfo.dwFlags = TME_QUERY;
            trackinfo.hwndTrack = infoPtr->hwndSelf;
            trackinfo.dwHoverTime = 0;

            /* call _TrackMouseEvent to see if we are currently tracking for this hwnd */
            FUNC11(&trackinfo);

            /* Make sure tracking is enabled so we receive a WM_MOUSELEAVE message */
            if(!(trackinfo.dwFlags & TME_LEAVE))
            {
                trackinfo.dwFlags = TME_LEAVE; /* notify upon leaving */

                /* call TRACKMOUSEEVENT so we receive a WM_MOUSELEAVE message */
                /* and can properly deactivate the hot chevron */
                FUNC11(&trackinfo);
            }

            lpChevronBand = FUNC5(infoPtr, iHitBand);
            if (!(lpChevronBand->fDraw & DRAW_CHEVRONHOT))
            {
                lpChevronBand->fDraw |= DRAW_CHEVRONHOT;
                FUNC3(infoPtr->hwndSelf, &lpChevronBand->rcChevron, TRUE);
                infoPtr->ichevronhotBand = iHitBand;
            }
        }
        infoPtr->iOldBand = iHitBand;
    }

    return 0;
}