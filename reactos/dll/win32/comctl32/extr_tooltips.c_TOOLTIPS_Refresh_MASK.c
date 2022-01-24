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
typedef  int UINT ;
struct TYPE_16__ {int uDrawFlags; } ;
struct TYPE_15__ {scalar_t__ bottom; int /*<<< orphan*/  right; scalar_t__ top; int /*<<< orphan*/  left; scalar_t__ member_3; int /*<<< orphan*/  member_2; scalar_t__ member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {scalar_t__ bottom; scalar_t__ right; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_14__ {int nMaxTipWidth; scalar_t__ szTipText; TYPE_1__ rcMargin; scalar_t__ pszTitle; int /*<<< orphan*/  hTitleFont; int /*<<< orphan*/  hTitleIcon; scalar_t__ bToolBelow; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  hFont; int /*<<< orphan*/  clrText; int /*<<< orphan*/  clrBk; } ;
typedef  TYPE_2__ TOOLTIPS_INFO ;
typedef  TYPE_3__ RECT ;
typedef  TYPE_4__ NMTTCUSTOMDRAW ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/ * HRGN ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/ * HBRUSH ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ BALLOON_ICON_TITLE_SPACING ; 
 scalar_t__ BALLOON_STEMHEIGHT ; 
 scalar_t__ BALLOON_TEXT_MARGIN ; 
 scalar_t__ BALLOON_TITLE_TEXT_SPACING ; 
 int /*<<< orphan*/  CDDS_POSTPAINT ; 
 int /*<<< orphan*/  CDDS_PREPAINT ; 
 int CDRF_NOTIFYPOSTPAINT ; 
 int /*<<< orphan*/  COLOR_WINDOWFRAME ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DI_NORMAL ; 
 int DT_BOTTOM ; 
 int DT_EXTERNALLEADING ; 
 int DT_NOPREFIX ; 
 int DT_SINGLELINE ; 
 int DT_WORDBREAK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ICON_HEIGHT ; 
 scalar_t__ ICON_WIDTH ; 
 scalar_t__ NORMAL_TEXT_MARGIN ; 
 int /*<<< orphan*/  SM_CXDLGFRAME ; 
 int /*<<< orphan*/  SM_CXEDGE ; 
 int /*<<< orphan*/  SM_CYDLGFRAME ; 
 int /*<<< orphan*/  SM_CYEDGE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__ const*,TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int FUNC17 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ TRANSPARENT ; 
 int TTS_BALLOON ; 
 int TTS_NOPREFIX ; 

__attribute__((used)) static void
FUNC18 (const TOOLTIPS_INFO *infoPtr, HDC hdc)
{
    RECT rc;
    INT oldBkMode;
    HFONT hOldFont;
    HBRUSH hBrush;
    UINT uFlags = DT_EXTERNALLEADING;
    HRGN hRgn = NULL;
    DWORD dwStyle = FUNC11(infoPtr->hwndSelf, GWL_STYLE);
    NMTTCUSTOMDRAW nmttcd;
    DWORD cdmode;

    if (infoPtr->nMaxTipWidth > -1)
	uFlags |= DT_WORDBREAK;
    if (FUNC11 (infoPtr->hwndSelf, GWL_STYLE) & TTS_NOPREFIX)
	uFlags |= DT_NOPREFIX;
    FUNC8 (infoPtr->hwndSelf, &rc);

    hBrush = FUNC1(infoPtr->clrBk);

    oldBkMode = FUNC14 (hdc, TRANSPARENT);
    FUNC15 (hdc, infoPtr->clrText);
    hOldFont = FUNC13 (hdc, infoPtr->hFont);

    /* Custom draw - Call PrePaint once initial properties set up     */
    /* Note: Contrary to MSDN, CDRF_SKIPDEFAULT still draws a tooltip */
    FUNC16(infoPtr, &nmttcd, hdc, &rc, uFlags);
    cdmode = FUNC17(CDDS_PREPAINT, &nmttcd);
    uFlags = nmttcd.uDrawFlags;

    if (dwStyle & TTS_BALLOON)
    {
        /* create a region to store result into */
        hRgn = FUNC0(0, 0, 0, 0);

        FUNC12(infoPtr->hwndSelf, hRgn);

        /* fill the background */
        FUNC6(hdc, hRgn, hBrush);
        FUNC2(hBrush);
        hBrush = NULL;
    }
    else
    {
        /* fill the background */
        FUNC5(hdc, &rc, hBrush);
        FUNC2(hBrush);
        hBrush = NULL;
    }

    if ((dwStyle & TTS_BALLOON) || infoPtr->pszTitle)
    {
        /* calculate text rectangle */
        rc.left   += (BALLOON_TEXT_MARGIN + infoPtr->rcMargin.left);
        rc.top    += (BALLOON_TEXT_MARGIN + infoPtr->rcMargin.top);
        rc.right  -= (BALLOON_TEXT_MARGIN + infoPtr->rcMargin.right);
        rc.bottom -= (BALLOON_TEXT_MARGIN + infoPtr->rcMargin.bottom);
        if(infoPtr->bToolBelow) rc.top += BALLOON_STEMHEIGHT;

        if (infoPtr->pszTitle)
        {
            RECT rcTitle = {rc.left, rc.top, rc.right, rc.bottom};
            int height;
            BOOL icon_present;
            HFONT prevFont;

            /* draw icon */
            icon_present = infoPtr->hTitleIcon && 
                FUNC3(hdc, rc.left, rc.top, infoPtr->hTitleIcon,
                           ICON_WIDTH, ICON_HEIGHT, 0, NULL, DI_NORMAL);
            if (icon_present)
                rcTitle.left += ICON_WIDTH + BALLOON_ICON_TITLE_SPACING;

            rcTitle.bottom = rc.top + ICON_HEIGHT;

            /* draw title text */
            prevFont = FUNC13 (hdc, infoPtr->hTitleFont);
            height = FUNC4(hdc, infoPtr->pszTitle, -1, &rcTitle, DT_BOTTOM | DT_SINGLELINE | DT_NOPREFIX);
            FUNC13 (hdc, prevFont);
            rc.top += height + BALLOON_TITLE_TEXT_SPACING;
        }
    }
    else
    {
        /* calculate text rectangle */
        rc.left   += (NORMAL_TEXT_MARGIN + infoPtr->rcMargin.left);
        rc.top    += (NORMAL_TEXT_MARGIN + infoPtr->rcMargin.top);
        rc.right  -= (NORMAL_TEXT_MARGIN + infoPtr->rcMargin.right);
        rc.bottom -= (NORMAL_TEXT_MARGIN + infoPtr->rcMargin.bottom);
    }

    /* draw text */
    FUNC4 (hdc, infoPtr->szTipText, -1, &rc, uFlags);

    /* Custom draw - Call PostPaint after drawing */
    if (cdmode & CDRF_NOTIFYPOSTPAINT) {
        FUNC17(CDDS_POSTPAINT, &nmttcd);
    }

    /* be polite and reset the things we changed in the dc */
    FUNC13 (hdc, hOldFont);
    FUNC14 (hdc, oldBkMode);

    if (dwStyle & TTS_BALLOON)
    {
        /* frame region because default window proc doesn't do it */
        INT width = FUNC10(SM_CXDLGFRAME) - FUNC10(SM_CXEDGE);
        INT height = FUNC10(SM_CYDLGFRAME) - FUNC10(SM_CYEDGE);

        hBrush = FUNC9(COLOR_WINDOWFRAME);
        FUNC7(hdc, hRgn, hBrush, width, height);
    }

    if (hRgn)
        FUNC2(hRgn);
}