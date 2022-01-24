#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int dwStyle; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_9__ {int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ REBAR_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HTHEME ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  BDR_RAISEDINNER ; 
 int /*<<< orphan*/  BF_RECT ; 
 int /*<<< orphan*/  BF_TOP ; 
 int DCX_USESTYLE ; 
 int DCX_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EDGE_ETCHED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int WS_BORDER ; 
 int WS_MINIMIZE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static LRESULT
FUNC9 (const REBAR_INFO *infoPtr)
{
    RECT rcWindow;
    HDC hdc;
    HTHEME theme;

    if (infoPtr->dwStyle & WS_MINIMIZE)
	return 0; /* Nothing to do */

    if (infoPtr->dwStyle & WS_BORDER) {

	/* adjust rectangle and draw the necessary edge */
	if (!(hdc = FUNC2( infoPtr->hwndSelf, 0, DCX_USESTYLE | DCX_WINDOW )))
	    return 0;
	FUNC3 (infoPtr->hwndSelf, &rcWindow);
	FUNC5 (&rcWindow, -rcWindow.left, -rcWindow.top);
        FUNC7("rect (%s)\n", FUNC8(&rcWindow));
	FUNC0 (hdc, &rcWindow, EDGE_ETCHED, BF_RECT);
	FUNC6( infoPtr->hwndSelf, hdc );
    }
    else if ((theme = FUNC4 (infoPtr->hwndSelf)))
    {
        /* adjust rectangle and draw the necessary edge */
        if (!(hdc = FUNC2( infoPtr->hwndSelf, 0, DCX_USESTYLE | DCX_WINDOW )))
            return 0;
        FUNC3 (infoPtr->hwndSelf, &rcWindow);
        FUNC5 (&rcWindow, -rcWindow.left, -rcWindow.top);
        FUNC7("rect (%s)\n", FUNC8(&rcWindow));
        FUNC1 (theme, hdc, 0, 0, &rcWindow, BDR_RAISEDINNER, BF_TOP, NULL);
        FUNC6( infoPtr->hwndSelf, hdc );
    }

    return 0;
}