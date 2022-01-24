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
struct TYPE_4__ {scalar_t__ TLbtnState; int dwStyle; scalar_t__ direction; int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ PAGER_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ PGF_HOT ; 
 scalar_t__ PGF_SCROLLDOWN ; 
 scalar_t__ PGF_SCROLLLEFT ; 
 scalar_t__ PGF_SCROLLRIGHT ; 
 scalar_t__ PGF_SCROLLUP ; 
 int PGS_AUTOSCROLL ; 
 int PGS_HORZ ; 
 int /*<<< orphan*/  REPEAT_DELAY ; 
 int SWP_FRAMECHANGED ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOSIZE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ TIMERID1 ; 
 scalar_t__ TIMERID2 ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 

__attribute__((used)) static LRESULT
FUNC5 (PAGER_INFO* infoPtr, INT nTimerId)
{
    INT dir;

    /* if initial timer, kill it and start the repeat timer */
    if (nTimerId == TIMERID1) {
	if (infoPtr->TLbtnState == PGF_HOT)
	    dir = (infoPtr->dwStyle & PGS_HORZ) ?
		PGF_SCROLLLEFT : PGF_SCROLLUP;
	else
	    dir = (infoPtr->dwStyle & PGS_HORZ) ?
		PGF_SCROLLRIGHT : PGF_SCROLLDOWN;
	FUNC4("[%p] TIMERID1: style=%08x, dir=%d\n",
              infoPtr->hwndSelf, infoPtr->dwStyle, dir);
	FUNC0(infoPtr->hwndSelf, TIMERID1);
	FUNC2(infoPtr->hwndSelf, TIMERID1, REPEAT_DELAY, 0);
	if (infoPtr->dwStyle & PGS_AUTOSCROLL) {
	    FUNC1(infoPtr, dir);
	    FUNC3(infoPtr->hwndSelf, 0, 0, 0, 0, 0,
			 SWP_FRAMECHANGED | SWP_NOSIZE | SWP_NOMOVE |
			 SWP_NOZORDER | SWP_NOACTIVATE);
	}
	return 0;

    }

    FUNC4("[%p] TIMERID2: dir=%d\n", infoPtr->hwndSelf, infoPtr->direction);
    FUNC0(infoPtr->hwndSelf, TIMERID2);
    if (infoPtr->direction > 0) {
	FUNC1(infoPtr, infoPtr->direction);
	FUNC2(infoPtr->hwndSelf, TIMERID2, REPEAT_DELAY, 0);
    }
    return 0;
}