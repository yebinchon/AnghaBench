#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_13__ {int nCurrentTool; scalar_t__* szTipText; TYPE_1__* tools; } ;
struct TYPE_12__ {scalar_t__ cbSize; int /*<<< orphan*/  lParam; int /*<<< orphan*/ * lpszText; int /*<<< orphan*/  hinst; int /*<<< orphan*/  rect; int /*<<< orphan*/  uId; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  uFlags; } ;
struct TYPE_11__ {int /*<<< orphan*/  lParam; int /*<<< orphan*/ * lpszText; int /*<<< orphan*/  hinst; int /*<<< orphan*/  rect; int /*<<< orphan*/  uId; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  uFlags; } ;
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
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * LPSTR_TEXTCALLBACKW ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,scalar_t__*) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 scalar_t__ TTTOOLINFOW_V1_SIZE ; 
 scalar_t__ TTTOOLINFOW_V2_SIZE ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static LRESULT
FUNC13 (TOOLTIPS_INFO *infoPtr, const TTTOOLINFOW *ti, BOOL isW)
{
    TTTOOL_INFO *toolPtr;
    INT nTool;

    if (!ti) return 0;
    if (ti->cbSize < TTTOOLINFOW_V1_SIZE)
	return 0;

    nTool = FUNC6 (infoPtr, ti);
    if (nTool == -1) return 0;

    FUNC10("tool %d\n", nTool);

    toolPtr = &infoPtr->tools[nTool];

    /* copy tool data */
    toolPtr->uFlags = ti->uFlags;
    toolPtr->hwnd   = ti->hwnd;
    toolPtr->uId    = ti->uId;
    toolPtr->rect   = ti->rect;
    toolPtr->hinst  = ti->hinst;

    if (FUNC2(ti->lpszText)) {
	FUNC10("set string id %x\n", FUNC3(ti->lpszText));
	toolPtr->lpszText = ti->lpszText;
    }
    else {
	if (FUNC8(ti->lpszText, isW))
	    toolPtr->lpszText = LPSTR_TEXTCALLBACKW;
	else {
	    if ( (toolPtr->lpszText) &&
		 !FUNC2(toolPtr->lpszText) ) {
		if( toolPtr->lpszText != LPSTR_TEXTCALLBACKW)
                    FUNC1 (toolPtr->lpszText);
		toolPtr->lpszText = NULL;
	    }
	    if (ti->lpszText) {
		if (isW) {
		    INT len = FUNC11 (ti->lpszText);
		    toolPtr->lpszText = FUNC0 ((len+1)*sizeof(WCHAR));
		    FUNC12 (toolPtr->lpszText, ti->lpszText);
		}
		else {
		    INT len = FUNC4(CP_ACP, 0, (LPSTR)ti->lpszText,
					      -1, NULL, 0);
		    toolPtr->lpszText = FUNC0 (len * sizeof(WCHAR));
		    FUNC4(CP_ACP, 0, (LPSTR)ti->lpszText, -1,
					toolPtr->lpszText, len);
		}
	    }
	}
    }

    if (ti->cbSize >= TTTOOLINFOW_V2_SIZE)
	toolPtr->lParam = ti->lParam;

    if (infoPtr->nCurrentTool == nTool)
    {
        FUNC5 (infoPtr, infoPtr->nCurrentTool, infoPtr->szTipText);

        if (infoPtr->szTipText[0] == 0)
            FUNC7(infoPtr);
        else
            FUNC9 (infoPtr, FALSE);
    }

    return 0;
}