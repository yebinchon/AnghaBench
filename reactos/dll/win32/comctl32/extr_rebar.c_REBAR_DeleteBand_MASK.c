#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int UINT ;
struct TYPE_12__ {struct TYPE_12__* lpText; scalar_t__ hwndChild; } ;
struct TYPE_11__ {int uNumBands; int /*<<< orphan*/  bands; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  TYPE_2__ REBAR_BAND ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  RBN_DELETEDBAND ; 
 int /*<<< orphan*/  RBN_DELETINGBAND ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT
FUNC8 (REBAR_INFO *infoPtr, WPARAM wParam)
{
    UINT uBand = (UINT)wParam;
    REBAR_BAND *lpBand;

    if (uBand >= infoPtr->uNumBands)
	return FALSE;

    FUNC7("deleting band %u!\n", uBand);
    lpBand = FUNC2(infoPtr, uBand);
    FUNC4 (infoPtr, uBand, RBN_DELETINGBAND);
    /* TODO: a return of 1 should probably cancel the deletion */

    if (lpBand->hwndChild)
        FUNC6(lpBand->hwndChild, SW_HIDE);
    FUNC1(lpBand->lpText);
    FUNC1(lpBand);

    infoPtr->uNumBands--;
    FUNC0(infoPtr->bands, uBand);

    FUNC4 (infoPtr, -1, RBN_DELETEDBAND);

    /* if only 1 band left the re-validate to possible eliminate gripper */
    if (infoPtr->uNumBands == 1)
      FUNC5 (infoPtr, FUNC2(infoPtr, 0));

    FUNC3(infoPtr);

    return TRUE;
}