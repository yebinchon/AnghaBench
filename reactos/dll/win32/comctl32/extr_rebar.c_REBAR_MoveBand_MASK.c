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
struct TYPE_5__ {scalar_t__ uNumBands; int /*<<< orphan*/  bands; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  int /*<<< orphan*/  REBAR_BAND ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT
FUNC6 (REBAR_INFO *infoPtr, INT iFrom, INT iTo)
{
    REBAR_BAND *lpBand;

    /* Validate */
    if ((infoPtr->uNumBands == 0) ||
	(iFrom < 0) || iFrom >= infoPtr->uNumBands ||
	(iTo < 0)   || iTo >= infoPtr->uNumBands) {
	/* error !!! */
	FUNC2("Illegal MoveBand, from=%d, to=%d, current band count=%d\n",
	      iFrom, iTo, infoPtr->uNumBands);
      	return FALSE;
    }

    lpBand = FUNC4(infoPtr, iFrom);
    FUNC0(infoPtr->bands, iFrom);
    FUNC1(infoPtr->bands, iTo, lpBand);

    FUNC5("moved band %d to index %d\n", iFrom, iTo);
    FUNC3 (infoPtr);

    /* **************************************************** */
    /*                                                      */
    /* We do not do a REBAR_Layout here because the native  */
    /* control does not do that. The actual layout and      */
    /* repaint is done by the *next* real action, ex.:      */
    /* RB_INSERTBAND, RB_DELETEBAND, RB_SIZETORECT, etc.    */
    /*                                                      */
    /* **************************************************** */

    return TRUE;
}