#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {int iGrabbedBand; int fStatus; int /*<<< orphan*/  hwndSelf; TYPE_1__ dragStart; TYPE_1__ dragNow; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_2__ REBAR_INFO ;
typedef  int /*<<< orphan*/  NMHDR ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 int BEGIN_DRAG_ISSUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBN_ENDDRAG ; 
 int /*<<< orphan*/  RBN_LAYOUTCHANGED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT
FUNC5 (REBAR_INFO *infoPtr)
{
    if (infoPtr->iGrabbedBand >= 0)
    {
        NMHDR layout;
        RECT rect;

        infoPtr->dragStart.x = 0;
        infoPtr->dragStart.y = 0;
        infoPtr->dragNow = infoPtr->dragStart;

        FUNC4 ();

        if (infoPtr->fStatus & BEGIN_DRAG_ISSUED) {
            FUNC2(&layout, infoPtr, RBN_LAYOUTCHANGED);
            FUNC3 (infoPtr, infoPtr->iGrabbedBand, RBN_ENDDRAG);
            infoPtr->fStatus &= ~BEGIN_DRAG_ISSUED;
        }

        infoPtr->iGrabbedBand = -1;

        FUNC0(infoPtr->hwndSelf, &rect);
        FUNC1(infoPtr->hwndSelf, NULL, TRUE);
    }

    return 0;
}