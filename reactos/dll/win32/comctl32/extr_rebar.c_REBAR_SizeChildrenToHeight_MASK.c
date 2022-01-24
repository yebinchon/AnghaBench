#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int bottom; int top; } ;
struct TYPE_8__ {int cyChild; int fStyle; int /*<<< orphan*/  cyMinBand; int /*<<< orphan*/  fDraw; int /*<<< orphan*/  cyMaxChild; scalar_t__ hwndChild; TYPE_1__ rcBand; } ;
typedef  int /*<<< orphan*/  REBAR_INFO ;
typedef  TYPE_2__ REBAR_BAND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  NTF_INVALIDATE ; 
 int RBBS_VARIABLEHEIGHT ; 
 int FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int) ; 
 int FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC7(const REBAR_INFO *infoPtr, int iBeginBand, int iEndBand, int extra, BOOL *fChanged)
{
    int cyBandsOld;
    int cyBandsNew = 0;
    int i;

    FUNC2("[%d;%d) by %d\n", iBeginBand, iEndBand, extra);

    cyBandsOld = FUNC1(infoPtr, iBeginBand)->rcBand.bottom -
                 FUNC1(infoPtr, iBeginBand)->rcBand.top;
    for (i = iBeginBand; i < iEndBand; i = FUNC4(infoPtr, i))
    {
        REBAR_BAND *lpBand = FUNC1(infoPtr, i);
        int cyMaxChild = cyBandsOld - FUNC0(lpBand) + extra;
        int cyChild = FUNC5(lpBand, cyMaxChild);

        if (lpBand->hwndChild && cyChild != lpBand->cyChild && (lpBand->fStyle & RBBS_VARIABLEHEIGHT))
        {
            FUNC2("Resizing %d: %d -> %d [%d]\n", i, lpBand->cyChild, cyChild, lpBand->cyMaxChild);
            *fChanged = TRUE;
            lpBand->cyChild = cyChild;
            lpBand->fDraw |= NTF_INVALIDATE;
            FUNC6(infoPtr, lpBand);
        }
        cyBandsNew = FUNC3(cyBandsNew, lpBand->cyMinBand);
    }
    return cyBandsNew - cyBandsOld;
}