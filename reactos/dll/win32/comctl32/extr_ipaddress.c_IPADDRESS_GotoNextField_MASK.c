#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* Part; } ;
struct TYPE_5__ {int /*<<< orphan*/  EditHwnd; } ;
typedef  TYPE_1__ IPPART_INFO ;
typedef  TYPE_2__ IPADDRESS_INFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  EM_SETSEL ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,int) ; 
 int POS_DEFAULT ; 
 int POS_RIGHT ; 
 int POS_SELALL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC5 (const IPADDRESS_INFO *infoPtr, int cur, int sel)
{
    FUNC4("\n");

    if(cur >= -1 && cur < 4) {
	FUNC1(infoPtr, cur);

	if(cur < 3) {
	    const IPPART_INFO *next = &infoPtr->Part[cur + 1];
	    int start = 0, end = 0;
            FUNC3 (next->EditHwnd);
	    if (sel != POS_DEFAULT) {
		if (sel == POS_RIGHT)
		    start = end = FUNC0(next->EditHwnd);
		else if (sel == POS_SELALL)
		    end = -1;
	        FUNC2(next->EditHwnd, EM_SETSEL, start, end);
	    }
	    return TRUE;
	}

    }
    return FALSE;
}