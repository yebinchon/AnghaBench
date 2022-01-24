#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ncm ;
struct TYPE_15__ {scalar_t__ lfWeight; } ;
struct TYPE_14__ {int /*<<< orphan*/  clrBtnFace; int /*<<< orphan*/  clrBtnText; } ;
struct TYPE_13__ {int style; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_12__ {int cbSize; TYPE_9__ lfCaptionFont; } ;
struct TYPE_11__ {int iOldBand; int ichevronhotBand; int iGrabbedBand; int orgStyle; int dwStyle; scalar_t__ hDefaultFont; scalar_t__ hFont; int /*<<< orphan*/  bands; scalar_t__ fStatus; void* hcurDrag; void* hcurVert; void* hcurHorz; void* hcurArrow; int /*<<< orphan*/  DoRedraw; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  clrBtnFace; int /*<<< orphan*/  clrBtnText; void* clrText; void* clrBk; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  TYPE_2__ NONCLIENTMETRICSW ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  TYPE_3__ CREATESTRUCTW ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int CCS_LAYOUT_MASK ; 
 int CCS_TOP ; 
 void* CLR_NONE ; 
 scalar_t__ FUNC1 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FW_NORMAL ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ IDC_ARROW ; 
 scalar_t__ IDC_SIZE ; 
 scalar_t__ IDC_SIZENS ; 
 scalar_t__ IDC_SIZEWE ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_REQUERY ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_GETNONCLIENTMETRICS ; 
 int /*<<< orphan*/  SYSTEM_FONT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int WS_VISIBLE ; 
 TYPE_4__ comctl32_color ; 
 int /*<<< orphan*/  rebar ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LRESULT
FUNC16 (HWND hwnd, const CREATESTRUCTW *cs)
{
    REBAR_INFO *infoPtr = FUNC8 (hwnd);
    RECT wnrc1, clrc1;
    NONCLIENTMETRICSW ncm;
    HFONT tfont;

    if (infoPtr) {
	FUNC3("Strange info structure pointer *not* NULL\n");
	return FALSE;
    }

    if (FUNC14(rebar)) {
	FUNC6(hwnd, &wnrc1);
	FUNC4(hwnd, &clrc1);
        FUNC13("window=(%s) client=(%s) cs=(%d,%d %dx%d)\n",
              FUNC15(&wnrc1), FUNC15(&clrc1),
	      cs->x, cs->y, cs->cx, cs->cy);
    }

    /* allocate memory for info structure */
    infoPtr = FUNC0 (sizeof(REBAR_INFO));
    FUNC10 (hwnd, 0, (DWORD_PTR)infoPtr);

    /* initialize info structure - initial values are 0 */
    infoPtr->clrBk = CLR_NONE;
    infoPtr->clrText = CLR_NONE;
    infoPtr->clrBtnText = comctl32_color.clrBtnText;
    infoPtr->clrBtnFace = comctl32_color.clrBtnFace;
    infoPtr->iOldBand = -1;
    infoPtr->ichevronhotBand = -2;
    infoPtr->iGrabbedBand = -1;
    infoPtr->hwndSelf = hwnd;
    infoPtr->DoRedraw = TRUE;
    infoPtr->hcurArrow = FUNC7 (0, (LPWSTR)IDC_ARROW);
    infoPtr->hcurHorz  = FUNC7 (0, (LPWSTR)IDC_SIZEWE);
    infoPtr->hcurVert  = FUNC7 (0, (LPWSTR)IDC_SIZENS);
    infoPtr->hcurDrag  = FUNC7 (0, (LPWSTR)IDC_SIZE);
    infoPtr->fStatus = 0;
    infoPtr->hFont = FUNC5 (SYSTEM_FONT);
    infoPtr->bands = FUNC2(8);

    /* issue WM_NOTIFYFORMAT to get unicode status of parent */
    FUNC9(infoPtr, NF_REQUERY);

    /* Stow away the original style */
    infoPtr->orgStyle = cs->style;
    /* add necessary styles to the requested styles */
    infoPtr->dwStyle = cs->style | WS_VISIBLE;
    if ((infoPtr->dwStyle & CCS_LAYOUT_MASK) == 0)
        infoPtr->dwStyle |= CCS_TOP;
    FUNC11 (hwnd, GWL_STYLE, infoPtr->dwStyle);

    /* get font handle for Caption Font */
    ncm.cbSize = sizeof(ncm);
    FUNC12 (SPI_GETNONCLIENTMETRICS, ncm.cbSize, &ncm, 0);
    /* if the font is bold, set to normal */
    if (ncm.lfCaptionFont.lfWeight > FW_NORMAL) {
	ncm.lfCaptionFont.lfWeight = FW_NORMAL;
    }
    tfont = FUNC1 (&ncm.lfCaptionFont);
    if (tfont) {
        infoPtr->hFont = infoPtr->hDefaultFont = tfont;
    }

    return TRUE;
}