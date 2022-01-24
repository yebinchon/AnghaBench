#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dwStyle; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  rcList; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ LISTVIEW_INFO ;
typedef  int INT ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int LVS_NOSCROLL ; 
 int SW_ERASE ; 
 int SW_INVALIDATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(LISTVIEW_INFO *infoPtr)
{
    INT dx, dy, pass;

    if ((infoPtr->dwStyle & LVS_NOSCROLL) || !FUNC3(infoPtr)) return;

    /* Setting the horizontal scroll can change the listview size
     * (and potentially everything else) so we need to recompute
     * everything again for the vertical scroll and vice-versa
     */
    for (dx = 0, dy = 0, pass = 0; pass <= 1; pass++)
    {
        dx += FUNC0(infoPtr);
        dy += FUNC1(infoPtr);
    }

    /* Change of the range may have changed the scroll pos. If so move the content */
    if (dx != 0 || dy != 0)
    {
        RECT listRect;
        listRect = infoPtr->rcList;
        FUNC2(infoPtr->hwndSelf, dx, dy, &listRect, &listRect, 0, 0,
            SW_ERASE | SW_INVALIDATE);
    }
}