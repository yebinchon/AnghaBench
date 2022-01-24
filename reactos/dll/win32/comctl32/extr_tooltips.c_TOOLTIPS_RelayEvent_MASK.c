#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int message; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  lParam; } ;
struct TYPE_11__ {short x; short y; } ;
struct TYPE_10__ {int nTool; int nCurrentTool; int /*<<< orphan*/  nInitialTime; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  bActive; int /*<<< orphan*/  nAutoPopTime; int /*<<< orphan*/  nReshowTime; } ;
typedef  TYPE_1__ TOOLTIPS_INFO ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_3__* LPMSG ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ID_TIMERLEAVE ; 
 int /*<<< orphan*/  ID_TIMERPOP ; 
 int /*<<< orphan*/  ID_TIMERSHOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
#define  WM_LBUTTONDOWN 134 
#define  WM_LBUTTONUP 133 
#define  WM_MBUTTONDOWN 132 
#define  WM_MBUTTONUP 131 
#define  WM_MOUSEMOVE 130 
#define  WM_RBUTTONDOWN 129 
#define  WM_RBUTTONUP 128 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static LRESULT
FUNC9 (TOOLTIPS_INFO *infoPtr, LPMSG lpMsg)
{
    POINT pt;
    INT nOldTool;

    if (!lpMsg) {
	FUNC0("lpMsg == NULL\n");
	return 0;
    }

    switch (lpMsg->message) {
	case WM_LBUTTONDOWN:
	case WM_LBUTTONUP:
	case WM_MBUTTONDOWN:
	case WM_MBUTTONUP:
	case WM_RBUTTONDOWN:
	case WM_RBUTTONUP:
	    FUNC6 (infoPtr);
	    break;

	case WM_MOUSEMOVE:
	    pt.x = (short)FUNC3(lpMsg->lParam);
	    pt.y = (short)FUNC1(lpMsg->lParam);
	    nOldTool = infoPtr->nTool;
	    infoPtr->nTool = FUNC5(infoPtr, lpMsg->hwnd,
						       &pt);
	    FUNC7("tool (%p) %d %d %d\n", infoPtr->hwndSelf, nOldTool,
		  infoPtr->nTool, infoPtr->nCurrentTool);
            FUNC7("WM_MOUSEMOVE (%p %s)\n", infoPtr->hwndSelf, FUNC8(&pt));

	    if (infoPtr->nTool != nOldTool) {
	        if(infoPtr->nTool == -1) { /* Moved out of all tools */
		    FUNC6(infoPtr);
		    FUNC2(infoPtr->hwndSelf, ID_TIMERLEAVE);
		} else if (nOldTool == -1) { /* Moved from outside */
		    if(infoPtr->bActive) {
		        FUNC4(infoPtr->hwndSelf, ID_TIMERSHOW, infoPtr->nInitialTime, 0);
                        FUNC7("timer 1 started\n");
		    }
		} else { /* Moved from one to another */
		    FUNC6 (infoPtr);
		    FUNC2(infoPtr->hwndSelf, ID_TIMERLEAVE);
		    if(infoPtr->bActive) {
		        FUNC4 (infoPtr->hwndSelf, ID_TIMERSHOW, infoPtr->nReshowTime, 0);
                        FUNC7("timer 1 started\n");
		    }
		}
	    } else if(infoPtr->nCurrentTool != -1) { /* restart autopop */
	        FUNC2(infoPtr->hwndSelf, ID_TIMERPOP);
		FUNC4(infoPtr->hwndSelf, ID_TIMERPOP, infoPtr->nAutoPopTime, 0);
		FUNC7("timer 2 restarted\n");
	    } else if(infoPtr->nTool != -1 && infoPtr->bActive) {
                /* previous show attempt didn't result in tooltip so try again */
		FUNC4(infoPtr->hwndSelf, ID_TIMERSHOW, infoPtr->nInitialTime, 0);
                FUNC7("timer 1 started\n");
	    }
	    break;
    }

    return 0;
}