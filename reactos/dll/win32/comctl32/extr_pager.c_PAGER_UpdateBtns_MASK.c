#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ TLbtnState; scalar_t__ BRbtnState; scalar_t__ nPos; int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  TYPE_1__ PAGER_INFO ;
typedef  scalar_t__ INT ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PGF_GRAYED ; 
 scalar_t__ PGF_INVISIBLE ; 
 void* PGF_NORMAL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SWP_FRAMECHANGED ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOSIZE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_NCPAINT ; 

__attribute__((used)) static void
FUNC6(PAGER_INFO *infoPtr, INT scrollRange, BOOL hideGrayBtns)
{
    BOOL resizeClient;
    BOOL repaintBtns;
    INT oldTLbtnState = infoPtr->TLbtnState;
    INT oldBRbtnState = infoPtr->BRbtnState;
    POINT pt;
    RECT rcTopLeft, rcBottomRight;

    /* get button rects */
    FUNC1(infoPtr, &rcTopLeft, &rcBottomRight, TRUE);

    FUNC0(&pt);
    FUNC3( infoPtr->hwndSelf, &pt );

    /* update states based on scroll position */
    if (infoPtr->nPos > 0)
    {
        if (infoPtr->TLbtnState == PGF_INVISIBLE || infoPtr->TLbtnState == PGF_GRAYED)
            infoPtr->TLbtnState = PGF_NORMAL;
    }
    else if (!hideGrayBtns && FUNC2(&rcTopLeft, pt))
        infoPtr->TLbtnState = PGF_GRAYED;
    else
        infoPtr->TLbtnState = PGF_INVISIBLE;

    if (scrollRange <= 0)
    {
        infoPtr->TLbtnState = PGF_INVISIBLE;
        infoPtr->BRbtnState = PGF_INVISIBLE;
    }
    else if (infoPtr->nPos < scrollRange)
    {
        if (infoPtr->BRbtnState == PGF_INVISIBLE || infoPtr->BRbtnState == PGF_GRAYED)
            infoPtr->BRbtnState = PGF_NORMAL;
    }
    else if (!hideGrayBtns && FUNC2(&rcBottomRight, pt))
        infoPtr->BRbtnState = PGF_GRAYED;
    else
        infoPtr->BRbtnState = PGF_INVISIBLE;

    /* only need to resize when entering or leaving PGF_INVISIBLE state */
    resizeClient =
        ((oldTLbtnState == PGF_INVISIBLE) != (infoPtr->TLbtnState == PGF_INVISIBLE)) ||
        ((oldBRbtnState == PGF_INVISIBLE) != (infoPtr->BRbtnState == PGF_INVISIBLE));
    /* initiate NCCalcSize to resize client wnd if necessary */
    if (resizeClient)
        FUNC5(infoPtr->hwndSelf, 0, 0, 0, 0, 0,
                     SWP_FRAMECHANGED | SWP_NOSIZE | SWP_NOMOVE |
                     SWP_NOZORDER | SWP_NOACTIVATE);

    /* repaint when changing any state */
    repaintBtns = (oldTLbtnState != infoPtr->TLbtnState) || 
                  (oldBRbtnState != infoPtr->BRbtnState);
    if (repaintBtns)
        FUNC4(infoPtr->hwndSelf, WM_NCPAINT, 0, 0);
}