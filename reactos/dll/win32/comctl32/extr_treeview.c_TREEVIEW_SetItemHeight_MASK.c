#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int uItemHeight; int dwStyle; int /*<<< orphan*/  bHeightSet; } ;
typedef  TYPE_1__ TREEVIEW_INFO ;
typedef  int LRESULT ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int TVS_NONEVENHEIGHT ; 

__attribute__((used)) static LRESULT
FUNC5(TREEVIEW_INFO *infoPtr, INT newHeight)
{
    INT prevHeight = infoPtr->uItemHeight;

    FUNC0("new=%d, old=%d\n", newHeight, prevHeight);
    if (newHeight == -1)
    {
	infoPtr->uItemHeight = FUNC2(infoPtr);
	infoPtr->bHeightSet = FALSE;
    }
    else
    {
        if (newHeight == 0) newHeight = 1;
        infoPtr->uItemHeight = newHeight;
        infoPtr->bHeightSet = TRUE;
    }

    /* Round down, unless we support odd ("non even") heights. */
    if (!(infoPtr->dwStyle & TVS_NONEVENHEIGHT) && infoPtr->uItemHeight != 1)
    {
        infoPtr->uItemHeight &= ~1;
        FUNC0("after rounding=%d\n", infoPtr->uItemHeight);
    }

    if (infoPtr->uItemHeight != prevHeight)
    {
	FUNC3(infoPtr, NULL);
	FUNC4(infoPtr);
	FUNC1(infoPtr, NULL);
    }

    return prevHeight;
}