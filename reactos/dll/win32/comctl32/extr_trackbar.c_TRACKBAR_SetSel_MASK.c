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
struct TYPE_4__ {int dwStyle; scalar_t__ lSelMin; scalar_t__ lSelMax; scalar_t__ lRangeMin; scalar_t__ lRangeMax; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ TRACKBAR_INFO ;
typedef  void* SHORT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LONG ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int TBS_ENABLESELRANGE ; 
 int /*<<< orphan*/  TB_SELECTIONCHANGED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static inline LRESULT
FUNC3 (TRACKBAR_INFO *infoPtr, BOOL fRedraw, LONG lSel)
{
    if (!(infoPtr->dwStyle & TBS_ENABLESELRANGE)){
        infoPtr->lSelMin = 0;
        infoPtr->lSelMax = 0;
        return 0;
    }

    infoPtr->lSelMin = (SHORT)FUNC1(lSel);
    infoPtr->lSelMax = (SHORT)FUNC0(lSel);
    infoPtr->flags |= TB_SELECTIONCHANGED;

    if (infoPtr->lSelMin < infoPtr->lRangeMin)
        infoPtr->lSelMin = infoPtr->lRangeMin;
    if (infoPtr->lSelMax > infoPtr->lRangeMax)
        infoPtr->lSelMax = infoPtr->lRangeMax;

    if (fRedraw) FUNC2(infoPtr);

    return 0;
}