#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_10__ {int /*<<< orphan*/  clr3dShadow; } ;
struct TYPE_7__ {int uItemState; int /*<<< orphan*/  hdc; } ;
struct TYPE_9__ {int nHLStringBkMode; int /*<<< orphan*/  clrText; int /*<<< orphan*/  clrMark; int /*<<< orphan*/  clrTextHighlight; int /*<<< orphan*/  clrBtnHighlight; TYPE_1__ nmcd; } ;
struct TYPE_8__ {scalar_t__ nMaxTextRows; int /*<<< orphan*/  dwDTFlags; int /*<<< orphan*/  hFont; int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_2__ TOOLBAR_INFO ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_3__ NMTBCUSTOMDRAW ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ HTHEME ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int CDIS_CHECKED ; 
 int CDIS_DISABLED ; 
 int CDIS_HOT ; 
 int CDIS_INDETERMINATE ; 
 int CDIS_MARKED ; 
 int CDIS_SELECTED ; 
 int DTT_GRAYED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TBCDRF_HILITEHOTTRACK ; 
 int TBCDRF_NOMARK ; 
 int TP_BUTTON ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TS_DISABLED ; 
 int TS_HOT ; 
 int TS_HOTCHECKED ; 
 int TS_NORMAL ; 
 int TS_PRESSED ; 
 TYPE_4__ comctl32_color ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11 (const TOOLBAR_INFO *infoPtr, RECT *rcText, LPCWSTR lpText,
                    const NMTBCUSTOMDRAW *tbcd, DWORD dwItemCDFlag)
{
    HDC hdc = tbcd->nmcd.hdc;
    HFONT  hOldFont = 0;
    COLORREF clrOld = 0;
    COLORREF clrOldBk = 0;
    int oldBkMode = 0;
    UINT state = tbcd->nmcd.uItemState;
#ifdef __REACTOS__
    HTHEME theme = GetWindowTheme (infoPtr->hwndSelf);
#endif

    /* draw text */
    if (lpText && infoPtr->nMaxTextRows > 0) {
        FUNC8("string=%s rect=(%s)\n", FUNC9(lpText),
              FUNC10(rcText));

	hOldFont = FUNC4 (hdc, infoPtr->hFont);
#ifdef __REACTOS__
    if (theme)
    {
        DWORD dwDTFlags2 = 0;
        int partId = TP_BUTTON;
        int stateId = TS_NORMAL;

        if (state & CDIS_DISABLED)
        {
            stateId = TS_DISABLED;
            dwDTFlags2 = DTT_GRAYED;
        }
        else if (state & CDIS_SELECTED)
            stateId = TS_PRESSED;
        else if (state & CDIS_CHECKED)
            stateId = (state & CDIS_HOT) ? TS_HOTCHECKED : TS_HOT;
        else if (state & CDIS_HOT)
            stateId = TS_HOT;

        DrawThemeText(theme, hdc, partId, stateId, lpText, -1, infoPtr->dwDTFlags, dwDTFlags2, rcText);
        SelectObject (hdc, hOldFont);
        return;
    }
#endif

	if ((state & CDIS_HOT) && (dwItemCDFlag & TBCDRF_HILITEHOTTRACK )) {
	    clrOld = FUNC7 (hdc, tbcd->clrTextHighlight);
	}
	else if (state & CDIS_DISABLED) {
	    clrOld = FUNC7 (hdc, tbcd->clrBtnHighlight);
	    FUNC3 (rcText, 1, 1);
	    FUNC0 (hdc, lpText, -1, rcText, infoPtr->dwDTFlags);
	    FUNC7 (hdc, comctl32_color.clr3dShadow);
	    FUNC3 (rcText, -1, -1);
	}
	else if (state & CDIS_INDETERMINATE) {
	    clrOld = FUNC7 (hdc, comctl32_color.clr3dShadow);
	}
	else if ((state & CDIS_MARKED) && !(dwItemCDFlag & TBCDRF_NOMARK)) {
	    clrOld = FUNC7 (hdc, tbcd->clrTextHighlight);
	    clrOldBk = FUNC5 (hdc, tbcd->clrMark);
	    oldBkMode = FUNC6 (hdc, tbcd->nHLStringBkMode);
	}
	else {
	    clrOld = FUNC7 (hdc, tbcd->clrText);
	}

	FUNC0 (hdc, lpText, -1, rcText, infoPtr->dwDTFlags);
	FUNC7 (hdc, clrOld);
	if ((state & CDIS_MARKED) && !(dwItemCDFlag & TBCDRF_NOMARK))
	{
	    FUNC5 (hdc, clrOldBk);
	    FUNC6 (hdc, oldBkMode);
	}
	FUNC4 (hdc, hOldFont);
    }
}