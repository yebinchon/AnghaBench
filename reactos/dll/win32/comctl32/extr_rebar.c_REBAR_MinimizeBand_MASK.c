#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int fStyle; scalar_t__ iRow; scalar_t__ cxMinBand; scalar_t__ cxEffective; scalar_t__ cx; } ;
struct TYPE_15__ {scalar_t__ uNumBands; int dwStyle; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  TYPE_2__ REBAR_BAND ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int CCS_VERT ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int RBBS_HIDDEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int,int) ; 
 TYPE_2__* FUNC3 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int FUNC9 (TYPE_1__ const*,scalar_t__) ; 
 int FUNC10 (TYPE_1__ const*,scalar_t__) ; 
 int FUNC11 (TYPE_1__ const*,scalar_t__) ; 
 int FUNC12 (TYPE_1__ const*,scalar_t__) ; 

__attribute__((used)) static LRESULT
FUNC13 (const REBAR_INFO *infoPtr, INT iBand)
{
    REBAR_BAND *lpBand;
    int iPrev, iRowBegin, iRowEnd;

    /* A "minimize" band is equivalent to "dragging" the gripper
     * of than band to the right till the band is only the size
     * of the cxHeader.
     */

    /* Validate */
    if (infoPtr->uNumBands == 0 || iBand < 0 || iBand >= infoPtr->uNumBands) {
	/* error !!! */
	FUNC0("Illegal MinimizeBand, requested=%d, current band count=%d\n",
	      iBand, infoPtr->uNumBands);
      	return FALSE;
    }

    /* compute amount of movement and validate */
    lpBand = FUNC3(infoPtr, iBand);

    if (lpBand->fStyle & RBBS_HIDDEN)
    {
        /* Windows is buggy and creates a hole/overlap */
        FUNC8("Ignoring minimize request on a hidden band (%d)\n", iBand);
        return FALSE;
    }

    iPrev = FUNC12(infoPtr, iBand);
    /* if first band in row */
    if (iPrev < 0 || FUNC3(infoPtr, iPrev)->iRow != lpBand->iRow) {
        int iNext = FUNC11(infoPtr, iBand);
        if (iNext < infoPtr->uNumBands && FUNC3(infoPtr, iNext)->iRow == lpBand->iRow) {
            FUNC7("(%d): Minimizing the first band in row is by maximizing the second\n", iBand);
            FUNC4(infoPtr, iNext, FALSE);
        }
        else
            FUNC7("(%d): Only one band in row - nothing to do\n", iBand);
        return TRUE;
    }

    FUNC3(infoPtr, iPrev)->cxEffective += lpBand->cxEffective - lpBand->cxMinBand;
    FUNC3(infoPtr, iPrev)->cx = FUNC3(infoPtr, iPrev)->cxEffective;
    lpBand->cx = lpBand->cxEffective = lpBand->cxMinBand;

    iRowBegin = FUNC9(infoPtr, iBand);
    iRowEnd = FUNC10(infoPtr, iBand);
    FUNC6(infoPtr, iRowBegin, iRowEnd);

    if (infoPtr->dwStyle & CCS_VERT)
        FUNC2(infoPtr, iRowBegin, iRowEnd);
    else
        FUNC1(infoPtr, iRowBegin, iRowEnd);
    FUNC5(infoPtr, iRowBegin, iRowEnd);
    return FALSE;
}