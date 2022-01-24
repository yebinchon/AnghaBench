#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  rcBand; } ;
struct TYPE_6__ {scalar_t__ uNumBands; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  TYPE_2__ REBAR_BAND ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* FUNC0 (TYPE_1__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LRESULT
FUNC3 (const REBAR_INFO *infoPtr, INT iBand, RECT *lprc)
{
    REBAR_BAND *lpBand;

    if (iBand < 0 || iBand >= infoPtr->uNumBands)
	return FALSE;
    if (!lprc)
	return FALSE;

    lpBand = FUNC0(infoPtr, iBand);
    /* For CCS_VERT the coordinates will be swapped - like on Windows */
    *lprc = lpBand->rcBand;

    FUNC1("band %d, (%s)\n", iBand, FUNC2(lprc));

    return TRUE;
}