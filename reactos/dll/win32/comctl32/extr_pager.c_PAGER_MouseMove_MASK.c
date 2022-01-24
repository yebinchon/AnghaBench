#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ hwndFrom; int /*<<< orphan*/  idFrom; int /*<<< orphan*/  code; } ;
struct TYPE_14__ {scalar_t__ hwndSelf; scalar_t__ TLbtnState; scalar_t__ BRbtnState; int dwStyle; int /*<<< orphan*/  hwndNotify; void* bCapture; int /*<<< orphan*/  clrBk; } ;
struct TYPE_13__ {scalar_t__ y; scalar_t__ x; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ POINT ;
typedef  TYPE_2__ PAGER_INFO ;
typedef  TYPE_3__ NMHDR ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 void* FALSE ; 
 int /*<<< orphan*/  GWLP_ID ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int) ; 
 int /*<<< orphan*/  NM_RELEASEDCAPTURE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ PGB_BOTTOMORRIGHT ; 
 scalar_t__ PGB_TOPORLEFT ; 
 scalar_t__ PGF_GRAYED ; 
 scalar_t__ PGF_HOT ; 
 void* PGF_INVISIBLE ; 
 scalar_t__ PGF_NORMAL ; 
 int PGS_AUTOSCROLL ; 
 int PGS_HORZ ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int RDW_FRAME ; 
 int RDW_INVALIDATE ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int SWP_FRAMECHANGED ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOSIZE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TIMERID1 ; 
 int /*<<< orphan*/  FUNC19 (char*,scalar_t__,...) ; 
 void* TRUE ; 
 int /*<<< orphan*/  WM_NOTIFY ; 
 scalar_t__ FUNC20 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LRESULT
FUNC23 (PAGER_INFO* infoPtr, INT keys, INT x, INT y)
{
    POINT clpt, pt;
    RECT wnrect;
    BOOL topLeft = FALSE;
    INT btnstate = 0;
    INT hit;
    HDC hdc;

    pt.x = x;
    pt.y = y;

    FUNC19("[%p] to (%d,%d)\n", infoPtr->hwndSelf, x, y);
    FUNC0(infoPtr->hwndSelf, &pt);
    FUNC4(infoPtr->hwndSelf, &wnrect);
    if (FUNC11(&wnrect, pt)) {
	RECT topleft, bottomright, *rect = NULL;

	FUNC9(infoPtr, &topleft, &bottomright, FALSE);

	clpt = pt;
	FUNC7(0, infoPtr->hwndSelf, &clpt, 1);
	hit = FUNC10(infoPtr, &clpt);
	if ((hit == PGB_TOPORLEFT) && (infoPtr->TLbtnState == PGF_NORMAL))
	{
	    topLeft = TRUE;
	    rect = &topleft;
	    infoPtr->TLbtnState = PGF_HOT;
	    btnstate = infoPtr->TLbtnState;
	}
	else if ((hit == PGB_BOTTOMORRIGHT) && (infoPtr->BRbtnState == PGF_NORMAL))
	{
	    topLeft = FALSE;
	    rect = &bottomright;
	    infoPtr->BRbtnState = PGF_HOT;
	    btnstate = infoPtr->BRbtnState;
	}

	/* If in one of the buttons the capture and draw buttons */
	if (rect)
	{
            FUNC19("[%p] draw btn (%s), Capture %s, style %08x\n",
                  infoPtr->hwndSelf, FUNC22(rect),
		  (infoPtr->bCapture) ? "TRUE" : "FALSE",
		  infoPtr->dwStyle);
	    if (!infoPtr->bCapture)
	    {
	        FUNC19("[%p] SetCapture\n", infoPtr->hwndSelf);
	        FUNC16(infoPtr->hwndSelf);
	        infoPtr->bCapture = TRUE;
	    }
	    if (infoPtr->dwStyle & PGS_AUTOSCROLL)
		FUNC17(infoPtr->hwndSelf, TIMERID1, 0x3e, 0);
	    hdc = FUNC2(infoPtr->hwndSelf);
	    /* OffsetRect(wnrect, 0 | 1, 0 | 1) */
	    FUNC8(hdc, infoPtr->clrBk, *rect,
			     infoPtr->dwStyle & PGS_HORZ, topLeft, btnstate);
	    FUNC14(infoPtr->hwndSelf, hdc);
	    return 0;
	}
    }

    /* If we think we are captured, then do release */
    if (infoPtr->bCapture && (FUNC20(pt) != infoPtr->hwndSelf))
    {
    	NMHDR nmhdr;

        infoPtr->bCapture = FALSE;

        if (FUNC1() == infoPtr->hwndSelf)
        {
            FUNC13();

            if (infoPtr->TLbtnState == PGF_GRAYED)
            {
                infoPtr->TLbtnState = PGF_INVISIBLE;
                FUNC18(infoPtr->hwndSelf, 0, 0, 0, 0, 0,
                             SWP_FRAMECHANGED | SWP_NOSIZE | SWP_NOMOVE |
                             SWP_NOZORDER | SWP_NOACTIVATE);
            }
            else if (infoPtr->TLbtnState == PGF_HOT)
            {
        	infoPtr->TLbtnState = PGF_NORMAL;
        	/* FIXME: just invalidate button rect */
                FUNC12(infoPtr->hwndSelf, NULL, NULL, RDW_FRAME | RDW_INVALIDATE);
            }

            if (infoPtr->BRbtnState == PGF_GRAYED)
            {
                infoPtr->BRbtnState = PGF_INVISIBLE;
                FUNC18(infoPtr->hwndSelf, 0, 0, 0, 0, 0,
                             SWP_FRAMECHANGED | SWP_NOSIZE | SWP_NOMOVE |
                             SWP_NOZORDER | SWP_NOACTIVATE);
            }
            else if (infoPtr->BRbtnState == PGF_HOT)
            {
        	infoPtr->BRbtnState = PGF_NORMAL;
        	/* FIXME: just invalidate button rect */
                FUNC12(infoPtr->hwndSelf, NULL, NULL, RDW_FRAME | RDW_INVALIDATE);
            }

            /* Notify parent of released mouse capture */
        	FUNC21(&nmhdr, 0, sizeof(NMHDR));
        	nmhdr.hwndFrom = infoPtr->hwndSelf;
        	nmhdr.idFrom   = FUNC3(infoPtr->hwndSelf, GWLP_ID);
        	nmhdr.code = NM_RELEASEDCAPTURE;
		FUNC15(infoPtr->hwndNotify, WM_NOTIFY, nmhdr.idFrom, (LPARAM)&nmhdr);
        }
        if (FUNC5(infoPtr->hwndSelf))
            FUNC6(infoPtr->hwndSelf, TIMERID1);
    }
    return 0;
}