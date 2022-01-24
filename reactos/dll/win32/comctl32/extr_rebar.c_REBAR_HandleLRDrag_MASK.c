#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_19__ {scalar_t__ left; } ;
struct TYPE_21__ {int /*<<< orphan*/  cxEffective; int /*<<< orphan*/  cx; TYPE_1__ rcBand; } ;
struct TYPE_20__ {scalar_t__ iGrabbedBand; int dwStyle; scalar_t__ ihitoffset; int /*<<< orphan*/  uNumBands; } ;
typedef  TYPE_2__ REBAR_INFO ;
typedef  TYPE_3__ REBAR_BAND ;
typedef  TYPE_4__ POINT ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CCS_VERT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 scalar_t__ REBAR_PRE_GRIPPER ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC8 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC11 (REBAR_INFO *infoPtr, const POINT *ptsmove)
     /* Function:  This will implement the functionality of a     */
     /*  Gripper drag within a row. It will not implement "out-   */
     /*  of-row" drags. (They are detected and handled in         */
     /*  REBAR_MouseMove.)                                        */
{
    REBAR_BAND *hitBand;
    INT iHitBand, iRowBegin, iRowEnd;
    INT movement, xBand, cxLeft = 0;
    BOOL shrunkBands = FALSE;

    iHitBand = infoPtr->iGrabbedBand;
    iRowBegin = FUNC8(infoPtr, iHitBand);
    iRowEnd = FUNC9(infoPtr, iHitBand);
    hitBand = FUNC2(infoPtr, iHitBand);

    xBand = hitBand->rcBand.left;
    movement = (infoPtr->dwStyle&CCS_VERT ? ptsmove->y : ptsmove->x)
                    - (xBand + REBAR_PRE_GRIPPER - infoPtr->ihitoffset);

    /* Dragging the first band in a row cannot cause shrinking */
    if(iHitBand != iRowBegin)
    {
        if (movement < 0) {
            cxLeft = FUNC7(infoPtr, iRowBegin, iHitBand, -movement, TRUE);

            if(cxLeft < -movement)
            {
                hitBand->cxEffective += -movement - cxLeft;
                hitBand->cx = hitBand->cxEffective;
                shrunkBands = TRUE;
            }

        } else if (movement > 0) {

            cxLeft = movement;
            if (FUNC10(infoPtr, iHitBand) >= 0)
                cxLeft = FUNC6(infoPtr, iHitBand, iRowEnd, movement, TRUE);

            if(cxLeft < movement)
            {
                REBAR_BAND *lpPrev = FUNC2(infoPtr, FUNC10(infoPtr, iHitBand));
                lpPrev->cxEffective += movement - cxLeft;
                lpPrev->cx = hitBand->cxEffective;
                shrunkBands = TRUE;
            }

        }
    }

    if(!shrunkBands)
    {
        /* It was not possible to move the band by shrinking bands.
         * Try relocating the band instead. */
        FUNC3(infoPtr, iHitBand, iRowBegin,
            iRowEnd, xBand + movement, TRUE);
    }

    FUNC5(infoPtr, iRowBegin, iRowEnd);
    if (infoPtr->dwStyle & CCS_VERT)
        FUNC1(infoPtr, 0, infoPtr->uNumBands);
    else
        FUNC0(infoPtr, 0, infoPtr->uNumBands);
    FUNC4(infoPtr, iRowBegin, iRowEnd);
}