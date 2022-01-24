#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; } ;
struct TYPE_15__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; } ;
struct TYPE_14__ {int fsState; int fsStyle; } ;
struct TYPE_13__ {scalar_t__ nMaxTextRows; int dwExStyle; } ;
typedef  TYPE_1__ TOOLBAR_INFO ;
typedef  TYPE_2__ TBUTTON_INFO ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  TYPE_4__* LPSIZE ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int BTNS_NOPREFIX ; 
 int BTNS_SHOWTEXT ; 
 int DT_CALCRECT ; 
 int DT_NOPREFIX ; 
 int DT_SINGLELINE ; 
 int DT_VCENTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TBSTATE_HIDDEN ; 
 int TBSTYLE_EX_MIXEDBUTTONS ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__ const*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(const TOOLBAR_INFO *infoPtr, const TBUTTON_INFO *btnPtr,
		      HDC hdc, LPSIZE lpSize)
{
    RECT myrect;

    lpSize->cx = 0;
    lpSize->cy = 0;

    if (infoPtr->nMaxTextRows > 0 &&
        !(btnPtr->fsState & TBSTATE_HIDDEN) &&
        (!(infoPtr->dwExStyle & TBSTYLE_EX_MIXEDBUTTONS) ||
        (btnPtr->fsStyle & BTNS_SHOWTEXT)) )
    {
        LPWSTR lpText = FUNC3(infoPtr, btnPtr);

	if(lpText != NULL) {
	    /* first get size of all the text */
	    FUNC1 (hdc, lpText, FUNC5 (lpText), lpSize);

	    /* feed above size into the rectangle for DrawText */
            FUNC2(&myrect, 0, 0, lpSize->cx, lpSize->cy);

	    /* Use DrawText to get true size as drawn (less pesky "&") */
	    FUNC0 (hdc, lpText, -1, &myrect, DT_VCENTER | DT_SINGLELINE |
	    	   DT_CALCRECT | ((btnPtr->fsStyle & BTNS_NOPREFIX) ?
				  DT_NOPREFIX : 0));

	    /* feed back to caller  */
	    lpSize->cx = myrect.right;
	    lpSize->cy = myrect.bottom;
	}
    }

    FUNC4("string size %d x %d!\n", lpSize->cx, lpSize->cy);
}