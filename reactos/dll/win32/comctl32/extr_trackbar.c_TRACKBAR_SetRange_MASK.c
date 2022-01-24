#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ lRangeMin; scalar_t__ lRangeMax; scalar_t__ lPos; int lPageSize; int dwStyle; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ TRACKBAR_INFO ;
typedef  scalar_t__ SHORT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int TBS_AUTOTICKS ; 
 int /*<<< orphan*/  TB_THUMBPOSCHANGED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static inline LRESULT
FUNC4 (TRACKBAR_INFO *infoPtr, BOOL redraw, LONG range)
{
    BOOL changed = infoPtr->lRangeMin != (SHORT)FUNC1(range) ||
                   infoPtr->lRangeMax != (SHORT)FUNC0(range);

    infoPtr->lRangeMin = (SHORT)FUNC1(range);
    infoPtr->lRangeMax = (SHORT)FUNC0(range);

    /* clip position to new min/max limit */
    if (infoPtr->lPos < infoPtr->lRangeMin)
        infoPtr->lPos = infoPtr->lRangeMin;

    if (infoPtr->lPos > infoPtr->lRangeMax)
        infoPtr->lPos = infoPtr->lRangeMax;

    infoPtr->lPageSize = (infoPtr->lRangeMax - infoPtr->lRangeMin) / 5;
    if (infoPtr->lPageSize == 0) infoPtr->lPageSize = 1;

    if (changed) {
        if (infoPtr->dwStyle & TBS_AUTOTICKS)
            FUNC3 (infoPtr);
        infoPtr->flags |= TB_THUMBPOSCHANGED;
    }

    if (redraw) FUNC2(infoPtr);

    return 0;
}