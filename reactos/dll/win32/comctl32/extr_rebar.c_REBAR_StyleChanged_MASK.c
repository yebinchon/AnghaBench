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
struct TYPE_7__ {int dwStyle; int orgStyle; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_6__ {int styleOld; int styleNew; } ;
typedef  TYPE_1__ STYLESTRUCT ;
typedef  TYPE_2__ REBAR_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int CCS_VERT ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GWL_STYLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int WS_BORDER ; 

__attribute__((used)) static LRESULT
FUNC3 (REBAR_INFO *infoPtr, INT nType, const STYLESTRUCT *lpStyle)
{
    FUNC2("current style=%08x, styleOld=%08x, style being set to=%08x\n",
	  infoPtr->dwStyle, lpStyle->styleOld, lpStyle->styleNew);
    if (nType == GWL_STYLE)
    {
        infoPtr->orgStyle = infoPtr->dwStyle = lpStyle->styleNew;
        if (FUNC0 (infoPtr->hwndSelf))
            infoPtr->dwStyle &= ~WS_BORDER;
        /* maybe it should be COMMON_STYLES like in toolbar */
        if ((lpStyle->styleNew ^ lpStyle->styleOld) & CCS_VERT)
            FUNC1(infoPtr);
    }
    return FALSE;
}