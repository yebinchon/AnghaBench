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
struct TYPE_4__ {scalar_t__ hMonthCal; scalar_t__ haveFocus; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  bDropdownEnabled; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ HWND ;
typedef  TYPE_1__ DATETIME_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ DTHT_GOTFOCUS ; 
 int /*<<< orphan*/  DTN_CLOSEUP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  NM_SETFOCUS ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

__attribute__((used)) static LRESULT
FUNC5 (DATETIME_INFO *infoPtr, HWND lostFocus)
{
    FUNC4("got focus from %p\n", lostFocus);

    /* if monthcal is open and it loses focus, close monthcal */
    if (infoPtr->hMonthCal && (lostFocus == infoPtr->hMonthCal) &&
        FUNC2(infoPtr->hMonthCal))
    {
        FUNC3(infoPtr->hMonthCal, SW_HIDE);
        FUNC0(infoPtr, DTN_CLOSEUP);
        /* note: this get triggered even if monthcal loses focus to a dropdown
         * box click, which occurs without an intermediate WM_PAINT call
         */
        infoPtr->bDropdownEnabled = FALSE;
        return 0;
    }

    if (infoPtr->haveFocus == 0) {
	FUNC0 (infoPtr, NM_SETFOCUS);
	infoPtr->haveFocus = DTHT_GOTFOCUS;
    }

    FUNC1(infoPtr->hwndSelf, NULL, FALSE);

    return 0;
}