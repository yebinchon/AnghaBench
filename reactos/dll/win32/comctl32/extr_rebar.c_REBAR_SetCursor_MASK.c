#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int dwStyle; int /*<<< orphan*/  hcurArrow; int /*<<< orphan*/  hcurHorz; int /*<<< orphan*/  hcurVert; int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int CCS_VERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ RBHT_CLIENT ; 
 scalar_t__ RBHT_GRABBER ; 
 int RBS_VERTICALGRIPPER ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT
FUNC7 (const REBAR_INFO *infoPtr, LPARAM lParam)
{
    POINT pt;
    UINT  flags;

    FUNC6("code=0x%X  id=0x%X\n", FUNC2(lParam), FUNC1(lParam));

    FUNC0 (&pt);
    FUNC4 (infoPtr->hwndSelf, &pt);

    FUNC3 (infoPtr, &pt, &flags, NULL);

    if (flags == RBHT_GRABBER) {
	if ((infoPtr->dwStyle & CCS_VERT) &&
	    !(infoPtr->dwStyle & RBS_VERTICALGRIPPER))
	    FUNC5 (infoPtr->hcurVert);
	else
	    FUNC5 (infoPtr->hcurHorz);
    }
    else if (flags != RBHT_CLIENT)
	FUNC5 (infoPtr->hcurArrow);

    return 0;
}