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
typedef  int /*<<< orphan*/  lf ;
struct TYPE_7__ {int /*<<< orphan*/  lfWeight; } ;
struct TYPE_6__ {int nCurrentTool; void* hTitleFont; void* hFont; } ;
typedef  TYPE_1__ TOOLTIPS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_2__ LOGFONTW ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 void* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FW_BOLD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,TYPE_2__*) ; 

__attribute__((used)) static LRESULT
FUNC4 (TOOLTIPS_INFO *infoPtr, HFONT hFont, BOOL redraw)
{
    LOGFONTW lf;

    if(!FUNC3(hFont, sizeof(lf), &lf))
        return 0;

    FUNC1 (infoPtr->hFont);
    infoPtr->hFont = FUNC0(&lf);

    FUNC1 (infoPtr->hTitleFont);
    lf.lfWeight = FW_BOLD;
    infoPtr->hTitleFont = FUNC0(&lf);

    if (redraw && infoPtr->nCurrentTool != -1)
        FUNC2("full redraw needed\n");

    return 0;
}