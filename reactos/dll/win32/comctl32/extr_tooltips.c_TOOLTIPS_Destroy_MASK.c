#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_8__ {size_t uNumTools; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  hTitleFont; int /*<<< orphan*/  hFont; int /*<<< orphan*/  hTitleIcon; struct TYPE_8__* pszTitle; struct TYPE_8__* tools; struct TYPE_8__* lpszText; } ;
typedef  TYPE_1__ TTTOOL_INFO ;
typedef  TYPE_1__ TOOLTIPS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* LPSTR_TEXTCALLBACKW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ TTI_ERROR ; 

__attribute__((used)) static LRESULT
FUNC6 (TOOLTIPS_INFO *infoPtr)
{
    TTTOOL_INFO *toolPtr;
    UINT i;

    /* free tools */
    if (infoPtr->tools) {
	for (i = 0; i < infoPtr->uNumTools; i++) {
	    toolPtr = &infoPtr->tools[i];
	    if (toolPtr->lpszText) {
		if ( (toolPtr->lpszText != LPSTR_TEXTCALLBACKW) &&
		     !FUNC2(toolPtr->lpszText) )
		{
		    FUNC1 (toolPtr->lpszText);
		    toolPtr->lpszText = NULL;
		}
	    }

            FUNC5 (toolPtr);
        }

	FUNC1 (infoPtr->tools);
    }

    /* free title string */
    FUNC1 (infoPtr->pszTitle);
    /* free title icon if not a standard one */
    if (FUNC4(infoPtr->hTitleIcon) > TTI_ERROR)
        FUNC0(infoPtr->hTitleIcon);

    /* delete fonts */
    FUNC0 (infoPtr->hFont);
    FUNC0 (infoPtr->hTitleFont);

    /* free tool tips info data */
    FUNC3(infoPtr->hwndSelf, 0, 0);
    FUNC1 (infoPtr);

    return 0;
}