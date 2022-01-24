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
struct TYPE_8__ {int /*<<< orphan*/  hdr; scalar_t__ hwndToolTips; } ;
struct TYPE_7__ {int nNumButtons; int /*<<< orphan*/ * buttons; scalar_t__ hwndToolTip; int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ TOOLBAR_INFO ;
typedef  TYPE_2__ NMTOOLTIPSCREATED ;

/* Variables and functions */
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NM_TOOLTIPSCREATED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TOOLTIPS_CLASSW ; 
 int /*<<< orphan*/  WS_POPUP ; 

__attribute__((used)) static void
FUNC4(TOOLBAR_INFO *infoPtr)
{
    int i;
    NMTOOLTIPSCREATED nmttc;

    infoPtr->hwndToolTip = FUNC0(0, TOOLTIPS_CLASSW, NULL, WS_POPUP,
            CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
            infoPtr->hwndSelf, 0, 0, 0);

    if (!infoPtr->hwndToolTip)
        return;

    /* Send NM_TOOLTIPSCREATED notification */
    nmttc.hwndToolTips = infoPtr->hwndToolTip;
    FUNC1(&nmttc.hdr, infoPtr, NM_TOOLTIPSCREATED);

    for (i = 0; i < infoPtr->nNumButtons; i++)
    {
        FUNC2(infoPtr, &infoPtr->buttons[i]);
        FUNC3(infoPtr, &infoPtr->buttons[i]);
    }
}