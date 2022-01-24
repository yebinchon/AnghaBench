#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {int nCurrentTool; scalar_t__ bTrackActive; scalar_t__ bActive; TYPE_1__* tools; } ;
struct TYPE_10__ {scalar_t__ cbSize; int /*<<< orphan*/ * lpszText; int /*<<< orphan*/  hinst; } ;
struct TYPE_9__ {int /*<<< orphan*/ * lpszText; int /*<<< orphan*/  hinst; } ;
typedef  TYPE_1__ TTTOOL_INFO ;
typedef  TYPE_2__ TTTOOLINFOW ;
typedef  TYPE_3__ TOOLTIPS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * LPSTR_TEXTCALLBACKW ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_3__*,TYPE_2__ const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ TTTOOLINFOW_V1_SIZE ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static LRESULT
FUNC10 (TOOLTIPS_INFO *infoPtr, const TTTOOLINFOW *ti, BOOL isW)
{
    TTTOOL_INFO *toolPtr;
    INT nTool;

    if (!ti) return 0;
    if (ti->cbSize < TTTOOLINFOW_V1_SIZE)
	return FALSE;

    nTool = FUNC4 (infoPtr, ti);
    if (nTool == -1)
	return 0;

    FUNC7("tool %d\n", nTool);

    toolPtr = &infoPtr->tools[nTool];

    /* copy tool text */
    toolPtr->hinst  = ti->hinst;

    if (FUNC2(ti->lpszText)){
	toolPtr->lpszText = ti->lpszText;
    }
    else if (ti->lpszText) {
	if (FUNC5(ti->lpszText, isW))
	    toolPtr->lpszText = LPSTR_TEXTCALLBACKW;
	else {
	    if ( (toolPtr->lpszText)  &&
		 !FUNC2(toolPtr->lpszText) ) {
		if( toolPtr->lpszText != LPSTR_TEXTCALLBACKW)
                    FUNC1 (toolPtr->lpszText);
		toolPtr->lpszText = NULL;
	    }
	    if (ti->lpszText) {
		if (isW) {
		    INT len = FUNC8 (ti->lpszText);
		    toolPtr->lpszText = FUNC0 ((len+1)*sizeof(WCHAR));
		    FUNC9 (toolPtr->lpszText, ti->lpszText);
		}
		else {
		    INT len = FUNC3(CP_ACP, 0, (LPSTR)ti->lpszText,
						-1, NULL, 0);
		    toolPtr->lpszText = FUNC0 (len * sizeof(WCHAR));
		    FUNC3(CP_ACP, 0, (LPSTR)ti->lpszText, -1,
					toolPtr->lpszText, len);
	        }
	    }
	}
    }

    if(infoPtr->nCurrentTool == -1) return 0;
    /* force repaint */
    if (infoPtr->bActive)
	FUNC6 (infoPtr, FALSE);
    else if (infoPtr->bTrackActive)
	FUNC6 (infoPtr, TRUE);

    return 0;
}