#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int uNumTools; int nTool; int nTrackTool; int nCurrentTool; TYPE_1__* tools; } ;
struct TYPE_15__ {scalar_t__ cbSize; } ;
struct TYPE_14__ {scalar_t__ lpszText; } ;
typedef  TYPE_1__ TTTOOL_INFO ;
typedef  TYPE_2__ TTTOOLINFOW ;
typedef  TYPE_3__ TOOLTIPS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ LPSTR_TEXTCALLBACKW ; 
 int FUNC3 (TYPE_3__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ TTTOOLINFOW_V2_SIZE ; 
 scalar_t__ TTTOOLINFOW_V3_SIZE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static LRESULT
FUNC8 (TOOLTIPS_INFO *infoPtr, const TTTOOLINFOW *ti, BOOL isW)
{
    TTTOOL_INFO *toolPtr;
    INT nTool;

    if (!ti) return 0;
    if (isW && ti->cbSize > TTTOOLINFOW_V2_SIZE &&
               ti->cbSize != TTTOOLINFOW_V3_SIZE)
	return 0;
    if (infoPtr->uNumTools == 0)
	return 0;

    nTool = FUNC3 (infoPtr, ti);

    FUNC6("tool %d\n", nTool);

    if (nTool == -1)
        return 0;

    /* make sure the tooltip has disappeared before deleting it */
    FUNC4(infoPtr);

    /* delete text string */
    toolPtr = &infoPtr->tools[nTool];
    if (toolPtr->lpszText) {
	if ( (toolPtr->lpszText != LPSTR_TEXTCALLBACKW) &&
	     !FUNC2(toolPtr->lpszText) )
	    FUNC1 (toolPtr->lpszText);
    }

    FUNC5 (toolPtr);

    /* delete tool from tool list */
    if (infoPtr->uNumTools == 1) {
	FUNC1 (infoPtr->tools);
	infoPtr->tools = NULL;
    }
    else {
	TTTOOL_INFO *oldTools = infoPtr->tools;
	infoPtr->tools =
	    FUNC0 (sizeof(TTTOOL_INFO) * (infoPtr->uNumTools - 1));

	if (nTool > 0)
	    FUNC7 (&infoPtr->tools[0], &oldTools[0],
		    nTool * sizeof(TTTOOL_INFO));

	if (nTool < infoPtr->uNumTools - 1)
	    FUNC7 (&infoPtr->tools[nTool], &oldTools[nTool + 1],
		    (infoPtr->uNumTools - nTool - 1) * sizeof(TTTOOL_INFO));

	FUNC1 (oldTools);
    }

    /* update any indices affected by delete */

    /* destroying tool that mouse was on on last relayed mouse move */
    if (infoPtr->nTool == nTool)
        /* -1 means no current tool (0 means first tool) */
        infoPtr->nTool = -1;
    else if (infoPtr->nTool > nTool)
        infoPtr->nTool--;

    if (infoPtr->nTrackTool == nTool)
        /* -1 means no current tool (0 means first tool) */
        infoPtr->nTrackTool = -1;
    else if (infoPtr->nTrackTool > nTool)
        infoPtr->nTrackTool--;

    if (infoPtr->nCurrentTool == nTool)
        /* -1 means no current tool (0 means first tool) */
        infoPtr->nCurrentTool = -1;
    else if (infoPtr->nCurrentTool > nTool)
        infoPtr->nCurrentTool--;

    infoPtr->uNumTools--;

    return 0;
}