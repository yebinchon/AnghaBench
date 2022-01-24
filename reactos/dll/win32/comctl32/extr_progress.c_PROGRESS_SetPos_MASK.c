#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_6__ {int CurVal; int /*<<< orphan*/  Self; } ;
typedef  TYPE_1__ PROGRESS_INFO ;
typedef  int INT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_STYLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PBS_MARQUEE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC6 (PROGRESS_INFO *infoPtr, INT pos)
{
    DWORD style = FUNC0(infoPtr->Self, GWL_STYLE);

    if (style & PBS_MARQUEE)
    {
        FUNC3(infoPtr);
        return 1;
    }
    else
    {
        UINT oldVal;
        oldVal = infoPtr->CurVal;
        if (oldVal != pos) {
	    infoPtr->CurVal = pos;
	    FUNC1(infoPtr);
	    FUNC4("PBM_SETPOS: current pos changed from %d to %d\n", oldVal, infoPtr->CurVal);
            FUNC2( infoPtr, oldVal, infoPtr->CurVal );
            FUNC5( infoPtr->Self );
        }
        return oldVal;
    }
}