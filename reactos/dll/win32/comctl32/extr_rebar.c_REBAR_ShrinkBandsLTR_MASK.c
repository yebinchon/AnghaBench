#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ cxEffective; scalar_t__ cx; scalar_t__ cxMinBand; } ;
typedef  int /*<<< orphan*/  REBAR_INFO ;
typedef  TYPE_1__ REBAR_BAND ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(const REBAR_INFO *infoPtr, INT iBeginBand, INT iEndBand, INT cxShrink, BOOL bEnforce)
{
    REBAR_BAND *lpBand;
    INT width, i;

    FUNC1("Shrinking bands [%d..%d) by %d, left-to-right\n", iBeginBand, iEndBand, cxShrink);
    for (i = iBeginBand; i < iEndBand; i = FUNC3(infoPtr, i))
    {
        lpBand = FUNC0(infoPtr, i);

        width = FUNC2(lpBand->cxEffective - cxShrink, (int)lpBand->cxMinBand);
        cxShrink -= lpBand->cxEffective - width;
        lpBand->cxEffective = width;
        if (bEnforce)
            lpBand->cx = lpBand->cxEffective;
        if (cxShrink == 0)
            break;
    }
    return cxShrink;
}