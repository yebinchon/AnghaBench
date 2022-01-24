#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int iRow; scalar_t__ cxEffective; int /*<<< orphan*/  cx; int /*<<< orphan*/  cxMinBand; } ;
struct TYPE_12__ {int dwStyle; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  TYPE_2__ REBAR_BAND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int RBS_VARHEIGHT ; 
 TYPE_2__* FUNC1 (TYPE_1__ const*,int,int) ; 
 TYPE_2__* FUNC2 (TYPE_1__ const*,int) ; 
 int FUNC3 (TYPE_1__ const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,int,int) ; 
 int FUNC5 (TYPE_1__ const*,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ SEP_WIDTH ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__ const*,int) ; 

__attribute__((used)) static void FUNC9(const REBAR_INFO *infoPtr, int iBeginBand, int iEndBand, int cx, int *piRow, int *pyPos)
{
    REBAR_BAND *lpBand;
    int i, extra;
    int width = 0;

    FUNC6("Adjusting row [%d;%d). Width: %d\n", iBeginBand, iEndBand, cx);
    for (i = iBeginBand; i < iEndBand; i++)
        FUNC2(infoPtr, i)->iRow = *piRow;

    /* compute the extra space */
    for (i = iBeginBand; i < iEndBand; i = FUNC8(infoPtr, i))
    {
        lpBand = FUNC2(infoPtr, i);
        if (i > iBeginBand)
            width += SEP_WIDTH;
        lpBand->cxEffective = FUNC7(lpBand->cxMinBand, lpBand->cx);
        width += lpBand->cxEffective;
    }

    extra = cx - width;
    FUNC6("Extra space: %d\n", extra);
    if (extra < 0) {
        int ret = FUNC5(infoPtr, iBeginBand, iEndBand, -extra, FALSE);
        if (ret > 0 && FUNC8(infoPtr, iBeginBand) != iEndBand)  /* one band may be longer than expected... */
            FUNC0("Error layouting row %d - couldn't shrink for %d pixels (%d total shrink)\n", *piRow, ret, -extra);
    } else
    if (extra > 0) {
        lpBand = FUNC1(infoPtr, iBeginBand, iEndBand);
        lpBand->cxEffective += extra;
    }

    FUNC4(infoPtr, iBeginBand, iEndBand);
    if (infoPtr->dwStyle & RBS_VARHEIGHT)
    {
        if (*piRow > 0)
            *pyPos += SEP_WIDTH;
        *pyPos = FUNC3(infoPtr, iBeginBand, iEndBand, *pyPos);
    }
    (*piRow)++;
}