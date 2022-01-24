#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  rcChevron; int /*<<< orphan*/  rcChild; int /*<<< orphan*/  rcCapText; int /*<<< orphan*/  rcCapImage; int /*<<< orphan*/  rcGripper; int /*<<< orphan*/  rcBand; } ;
struct TYPE_8__ {scalar_t__ uNumBands; int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  TYPE_2__ REBAR_BAND ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 scalar_t__ RBHT_CAPTION ; 
 scalar_t__ RBHT_CHEVRON ; 
 scalar_t__ RBHT_CLIENT ; 
 scalar_t__ RBHT_GRABBER ; 
 scalar_t__ RBHT_NOWHERE ; 
 TYPE_2__* FUNC3 (TYPE_1__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (const REBAR_INFO *infoPtr, const POINT *lpPt, UINT *pFlags, INT *pBand)
{
    REBAR_BAND *lpBand;
    RECT rect;
    UINT  iCount;

    FUNC0 (infoPtr->hwndSelf, &rect);

    *pFlags = RBHT_NOWHERE;
    if (FUNC2 (&rect, *lpPt))
    {
	if (infoPtr->uNumBands == 0) {
	    *pFlags = RBHT_NOWHERE;
	    if (pBand)
		*pBand = -1;
	    FUNC4("NOWHERE\n");
	    return;
	}
	else {
	    /* somewhere inside */
	    for (iCount = 0; iCount < infoPtr->uNumBands; iCount++) {
                RECT rcBand;
		lpBand = FUNC3(infoPtr, iCount);
                FUNC5(infoPtr, &rcBand, &lpBand->rcBand);
                if (FUNC1(lpBand)) continue;
		if (FUNC2 (&rcBand, *lpPt)) {
		    if (pBand)
			*pBand = iCount;
		    if (FUNC2 (&lpBand->rcGripper, *lpPt)) {
			*pFlags = RBHT_GRABBER;
			FUNC4("ON GRABBER %d\n", iCount);
			return;
		    }
		    else if (FUNC2 (&lpBand->rcCapImage, *lpPt)) {
			*pFlags = RBHT_CAPTION;
			FUNC4("ON CAPTION %d\n", iCount);
			return;
		    }
		    else if (FUNC2 (&lpBand->rcCapText, *lpPt)) {
			*pFlags = RBHT_CAPTION;
			FUNC4("ON CAPTION %d\n", iCount);
			return;
		    }
		    else if (FUNC2 (&lpBand->rcChild, *lpPt)) {
			*pFlags = RBHT_CLIENT;
			FUNC4("ON CLIENT %d\n", iCount);
			return;
		    }
		    else if (FUNC2 (&lpBand->rcChevron, *lpPt)) {
			*pFlags = RBHT_CHEVRON;
			FUNC4("ON CHEVRON %d\n", iCount);
			return;
		    }
		    else {
			*pFlags = RBHT_NOWHERE;
			FUNC4("NOWHERE %d\n", iCount);
			return;
		    }
		}
	    }

	    *pFlags = RBHT_NOWHERE;
	    if (pBand)
		*pBand = -1;

	    FUNC4("NOWHERE\n");
	    return;
	}
    }
    else {
	*pFlags = RBHT_NOWHERE;
	if (pBand)
	    *pBand = -1;
	FUNC4("NOWHERE\n");
	return;
    }
}