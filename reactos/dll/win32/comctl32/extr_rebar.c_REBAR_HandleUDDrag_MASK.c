#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int x; int y; } ;
struct TYPE_14__ {int bottom; } ;
struct TYPE_16__ {int fStyle; TYPE_1__ rcBand; } ;
struct TYPE_15__ {int dwStyle; int uNumBands; int iGrabbedBand; int ihitoffset; int /*<<< orphan*/  bands; } ;
typedef  TYPE_2__ REBAR_INFO ;
typedef  TYPE_3__ REBAR_BAND ;
typedef  TYPE_4__ POINT ;
typedef  int INT ;

/* Variables and functions */
 int CCS_VERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int RBBS_BREAK ; 
 TYPE_3__* FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int REBAR_PRE_GRIPPER ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC8 (REBAR_INFO *infoPtr, const POINT *ptsmove)
{
    INT yOff = (infoPtr->dwStyle & CCS_VERT) ? ptsmove->x : ptsmove->y;
    INT iHitBand, iRowBegin, iNextRowBegin;
    REBAR_BAND *hitBand, *rowBeginBand;

    if(infoPtr->uNumBands <= 0)
        FUNC2("There are no bands in this rebar\n");

    /* Up/down dragging can only occur when there is more than one
     * band in the rebar */
    if(infoPtr->uNumBands <= 1)
        return;

    iHitBand = infoPtr->iGrabbedBand;
    hitBand = FUNC3(infoPtr, iHitBand);

    /* If we're taking a band that has the RBBS_BREAK style set, this
     * style needs to be reapplied to the band that is going to become
     * the new start of the row. */
    if((hitBand->fStyle & RBBS_BREAK) &&
        (iHitBand < infoPtr->uNumBands - 1))
        FUNC3(infoPtr, iHitBand + 1)->fStyle |= RBBS_BREAK;

    if(yOff < 0)
    {
        /* Place the band above the current top row */
        if(iHitBand==0 && (infoPtr->uNumBands==1 || FUNC3(infoPtr, 1)->fStyle&RBBS_BREAK))
            return;
        FUNC0(infoPtr->bands, iHitBand);
        hitBand->fStyle &= ~RBBS_BREAK;
        FUNC3(infoPtr, 0)->fStyle |= RBBS_BREAK;
        infoPtr->iGrabbedBand = FUNC1(
            infoPtr->bands, 0, hitBand);
    }
    else if(yOff > FUNC3(infoPtr, infoPtr->uNumBands - 1)->rcBand.bottom)
    {
        /* Place the band below the current bottom row */
        if(iHitBand == infoPtr->uNumBands-1 && hitBand->fStyle&RBBS_BREAK)
            return;
        FUNC0(infoPtr->bands, iHitBand);
        hitBand->fStyle |= RBBS_BREAK;
        infoPtr->iGrabbedBand = FUNC1(
            infoPtr->bands, infoPtr->uNumBands - 1, hitBand);
    }
    else
    {
        /* Place the band in the prexisting row the mouse is hovering over */
        iRowBegin = FUNC6(infoPtr);
        while(iRowBegin < infoPtr->uNumBands)
        {
            iNextRowBegin = FUNC7(infoPtr, iRowBegin);
            rowBeginBand = FUNC3(infoPtr, iRowBegin);
            if(rowBeginBand->rcBand.bottom > yOff)
            {
                FUNC5(
                    infoPtr, iHitBand, iRowBegin, iNextRowBegin,
                    ((infoPtr->dwStyle & CCS_VERT) ? ptsmove->y : ptsmove->x)
                        - REBAR_PRE_GRIPPER - infoPtr->ihitoffset, FALSE);
                break;
            }

            iRowBegin = iNextRowBegin;
        }
    }

    FUNC4(infoPtr);
}