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
struct TYPE_6__ {int nTool; int /*<<< orphan*/  nReshowTime; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  bActive; int /*<<< orphan*/  nCurrentTool; } ;
typedef  TYPE_1__ TOOLTIPS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
#define  ID_TIMERLEAVE 130 
#define  ID_TIMERPOP 129 
#define  ID_TIMERSHOW 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT
FUNC7 (TOOLTIPS_INFO *infoPtr, INT iTimer)
{
    INT nOldTool;

    FUNC6("timer %d (%p) expired\n", iTimer, infoPtr->hwndSelf);

    switch (iTimer) {
    case ID_TIMERSHOW:
        FUNC1 (infoPtr->hwndSelf, ID_TIMERSHOW);
	nOldTool = infoPtr->nTool;
	if ((infoPtr->nTool = FUNC3 (infoPtr, TRUE)) == nOldTool)
	    FUNC5 (infoPtr, FALSE);
	break;

    case ID_TIMERPOP:
        FUNC4 (infoPtr);
	break;

    case ID_TIMERLEAVE:
        nOldTool = infoPtr->nTool;
	infoPtr->nTool = FUNC3 (infoPtr, FALSE);
	FUNC6("tool (%p) %d %d %d\n", infoPtr->hwndSelf, nOldTool,
	      infoPtr->nTool, infoPtr->nCurrentTool);
	if (infoPtr->nTool != nOldTool) {
	    if(infoPtr->nTool == -1) { /* Moved out of all tools */
	        FUNC4(infoPtr);
		FUNC1(infoPtr->hwndSelf, ID_TIMERLEAVE);
	    } else if (nOldTool == -1) { /* Moved from outside */
	        FUNC0("How did this happen?\n");
	    } else { /* Moved from one to another */
	        FUNC4 (infoPtr);
		FUNC1(infoPtr->hwndSelf, ID_TIMERLEAVE);
		if(infoPtr->bActive) {
		    FUNC2 (infoPtr->hwndSelf, ID_TIMERSHOW, infoPtr->nReshowTime, 0);
		    FUNC6("timer 1 started!\n");
		}
	    }
	}
	break;

    default:
        FUNC0("Unknown timer id %d\n", iTimer);
	break;
    }
    return 0;
}