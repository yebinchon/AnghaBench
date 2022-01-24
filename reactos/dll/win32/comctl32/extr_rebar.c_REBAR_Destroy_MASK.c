#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ uNumBands; int /*<<< orphan*/  hwndSelf; scalar_t__ hDefaultFont; int /*<<< orphan*/  hcurDrag; int /*<<< orphan*/  hcurVert; int /*<<< orphan*/  hcurHorz; int /*<<< orphan*/  hcurArrow; int /*<<< orphan*/ * bands; int /*<<< orphan*/  hwndChild; struct TYPE_7__* lpText; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  TYPE_1__ REBAR_BAND ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static LRESULT
FUNC10 (REBAR_INFO *infoPtr)
{
    REBAR_BAND *lpBand;
    UINT i;

    /* clean up each band */
    for (i = 0; i < infoPtr->uNumBands; i++) {
	lpBand = FUNC7(infoPtr, i);

	/* delete text strings */
        FUNC5 (lpBand->lpText);
	lpBand->lpText = NULL;
	/* destroy child window */
	FUNC4 (lpBand->hwndChild);
	FUNC5 (lpBand);
    }

    /* free band array */
    FUNC1 (infoPtr->bands);
    infoPtr->bands = NULL;

    FUNC3 (infoPtr->hcurArrow);
    FUNC3 (infoPtr->hcurHorz);
    FUNC3 (infoPtr->hcurVert);
    FUNC3 (infoPtr->hcurDrag);
    if (infoPtr->hDefaultFont) FUNC2 (infoPtr->hDefaultFont);
    FUNC8 (infoPtr->hwndSelf, 0, 0);
    
    FUNC0 (FUNC6 (infoPtr->hwndSelf));

    /* free rebar info data */
    FUNC5 (infoPtr);
    FUNC9("destroyed!\n");
    return 0;
}