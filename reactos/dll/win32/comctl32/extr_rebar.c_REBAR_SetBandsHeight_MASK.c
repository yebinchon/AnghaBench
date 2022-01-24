#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int top; int bottom; } ;
struct TYPE_4__ {int iRow; int cyRowSoFar; TYPE_2__ rcBand; int /*<<< orphan*/  fDraw; int /*<<< orphan*/  cyMinBand; } ;
typedef  int /*<<< orphan*/  REBAR_INFO ;
typedef  TYPE_1__ REBAR_BAND ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  NTF_INVALIDATE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ SEP_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(const REBAR_INFO *infoPtr, INT iBeginBand, INT iEndBand, INT yStart)
{
    REBAR_BAND *lpBand;
    int yMaxHeight = 0;
    int yPos = yStart;
    int row = FUNC0(infoPtr, iBeginBand)->iRow;
    int i;
    for (i = iBeginBand; i < iEndBand; i = FUNC3(infoPtr, i))
    {
        lpBand = FUNC0(infoPtr, i);
        lpBand->cyRowSoFar = yMaxHeight;
        yMaxHeight = FUNC2(yMaxHeight, lpBand->cyMinBand);
    }
    FUNC1("Bands [%d; %d) height: %d\n", iBeginBand, iEndBand, yMaxHeight);

    for (i = iBeginBand; i < iEndBand; i = FUNC3(infoPtr, i))
    {
        lpBand = FUNC0(infoPtr, i);
        /* we may be called for multiple rows if RBS_VARHEIGHT not set */
        if (lpBand->iRow != row) {
            yPos += yMaxHeight + SEP_WIDTH;
            row = lpBand->iRow;
        }

        if (lpBand->rcBand.top != yPos || lpBand->rcBand.bottom != yPos + yMaxHeight) {
            lpBand->fDraw |= NTF_INVALIDATE;
            lpBand->rcBand.top = yPos;
            lpBand->rcBand.bottom = yPos + yMaxHeight;
            FUNC1("Band %d: %s\n", i, FUNC4(&lpBand->rcBand));
        }
    }
    return yPos + yMaxHeight;
}