#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int fStyle; int cxIdeal; int cxHeader; int cxEffective; int cx; } ;
struct TYPE_16__ {int cx; } ;
struct TYPE_17__ {scalar_t__ uNumBands; int dwStyle; TYPE_1__ calcSize; } ;
typedef  TYPE_2__ REBAR_INFO ;
typedef  TYPE_3__ REBAR_BAND ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ LPARAM ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int CCS_VERT ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int RBBS_HIDDEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*,int,int) ; 
 TYPE_3__* FUNC3 (TYPE_2__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*,int,int) ; 
 int REBAR_POST_CHILD ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const*,int,int) ; 
 int FUNC6 (TYPE_2__ const*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__ const*,int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 int FUNC10 (TYPE_2__ const*,scalar_t__) ; 
 int FUNC11 (TYPE_2__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__ const*,scalar_t__) ; 

__attribute__((used)) static LRESULT
FUNC13 (const REBAR_INFO *infoPtr, INT iBand, LPARAM lParam)
{
    REBAR_BAND *lpBand;
    int iRowBegin, iRowEnd;
    int cxDesired, extra, extraOrig;
    int cxIdealBand;

    /* Validate */
    if (infoPtr->uNumBands == 0 || iBand < 0 || iBand >= infoPtr->uNumBands) {
	/* error !!! */
	FUNC0("Illegal MaximizeBand, requested=%d, current band count=%d\n",
	      iBand, infoPtr->uNumBands);
      	return FALSE;
    }

    lpBand = FUNC3(infoPtr, iBand);

    if (lpBand->fStyle & RBBS_HIDDEN)
    {
        /* Windows is buggy and creates a hole */
        FUNC9("Ignoring maximize request on a hidden band (%d)\n", iBand);
        return FALSE;
    }

    cxIdealBand = lpBand->cxIdeal + lpBand->cxHeader + REBAR_POST_CHILD;
    if (lParam && (lpBand->cxEffective < cxIdealBand))
        cxDesired = cxIdealBand;
    else
        cxDesired = infoPtr->calcSize.cx;

    iRowBegin = FUNC10(infoPtr, iBand);
    iRowEnd   = FUNC11(infoPtr, iBand);
    extraOrig = extra = cxDesired - lpBand->cxEffective;
    if (extra > 0)
        extra = FUNC7(infoPtr, iRowBegin, iBand, extra, TRUE);
    if (extra > 0)
        extra = FUNC6(infoPtr, FUNC12(infoPtr, iBand), iRowEnd, extra, TRUE);
    lpBand->cxEffective += extraOrig - extra;
    lpBand->cx = lpBand->cxEffective;
    FUNC8("(%d, %ld): Wanted size %d, obtained %d (shrink %d, %d)\n", iBand, lParam, cxDesired, lpBand->cx, extraOrig, extra);
    FUNC5(infoPtr, iRowBegin, iRowEnd);

    if (infoPtr->dwStyle & CCS_VERT)
        FUNC2(infoPtr, iRowBegin, iRowEnd);
    else
        FUNC1(infoPtr, iRowBegin, iRowEnd);
    FUNC4(infoPtr, iRowBegin, iRowEnd);
    return TRUE;

}