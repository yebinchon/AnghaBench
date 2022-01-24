#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nclm ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_20__ {int /*<<< orphan*/  hwndParent; scalar_t__ lpszName; } ;
struct TYPE_16__ {scalar_t__ idFrom; int /*<<< orphan*/  code; void* hwndFrom; } ;
struct TYPE_19__ {TYPE_3__ hdr; scalar_t__ hwndToolTips; } ;
struct TYPE_18__ {int cbSize; int /*<<< orphan*/  lfStatusFont; } ;
struct TYPE_14__ {scalar_t__ hIcon; scalar_t__ style; scalar_t__ x; scalar_t__ text; void* bound; } ;
struct TYPE_17__ {int numParts; int minHeight; scalar_t__ hwndToolTip; int /*<<< orphan*/  height; TYPE_2__* parts; TYPE_1__ part0; int /*<<< orphan*/  hDefaultFont; int /*<<< orphan*/  Notify; int /*<<< orphan*/  horizontalGap; int /*<<< orphan*/  verticalBorder; int /*<<< orphan*/  horizontalBorder; scalar_t__ hFont; int /*<<< orphan*/  clrBk; int /*<<< orphan*/  simple; void* Self; } ;
struct TYPE_15__ {int x; void* text; scalar_t__ hIcon; scalar_t__ style; void* bound; } ;
typedef  TYPE_4__ STATUS_INFO ;
typedef  int /*<<< orphan*/  STATUSWINDOWPART ;
typedef  void* RECT ;
typedef  TYPE_5__ NONCLIENTMETRICSW ;
typedef  TYPE_6__ NMTOOLTIPSCREATED ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  void* HWND ;
typedef  int /*<<< orphan*/  HINSTANCE ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int DWORD ;
typedef  TYPE_7__ CREATESTRUCTA ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  CLR_DEFAULT ; 
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWLP_HINSTANCE ; 
 int /*<<< orphan*/  GWLP_ID ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC3 (void*,void**) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HORZ_BORDER ; 
 int /*<<< orphan*/  HORZ_GAP ; 
 int /*<<< orphan*/  NF_REQUERY ; 
 int /*<<< orphan*/  NM_TOOLTIPSCREATED ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int SBT_TOOLTIPS ; 
 int /*<<< orphan*/  SM_CYSIZE ; 
 int /*<<< orphan*/  SPI_GETNONCLIENTMETRICS ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOOLTIPS_CLASSW ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int TTS_ALWAYSTIP ; 
 int /*<<< orphan*/  VERT_BORDER ; 
 int /*<<< orphan*/  WM_NOTIFY ; 
 int WS_BORDER ; 
 int WS_POPUP ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC17 (void*,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  themeClass ; 

__attribute__((used)) static LRESULT
FUNC19 (HWND hwnd, const CREATESTRUCTA *lpCreate)
{
    STATUS_INFO *infoPtr;
    NONCLIENTMETRICSW nclm;
    DWORD dwStyle;
    RECT rect;
    int	len;

    FUNC15("\n");
    infoPtr = FUNC0 (sizeof(STATUS_INFO));
    if (!infoPtr) goto create_fail;
    FUNC12 (hwnd, 0, (DWORD_PTR)infoPtr);

    infoPtr->Self = hwnd;
    infoPtr->Notify = lpCreate->hwndParent;
    infoPtr->numParts = 1;
    infoPtr->parts = 0;
    infoPtr->simple = FALSE;
    infoPtr->clrBk = CLR_DEFAULT;
    infoPtr->hFont = 0;
    infoPtr->horizontalBorder = HORZ_BORDER;
    infoPtr->verticalBorder = VERT_BORDER;
    infoPtr->horizontalGap = HORZ_GAP;
    infoPtr->minHeight = FUNC4(SM_CYSIZE);
    if (infoPtr->minHeight & 1) infoPtr->minHeight--;

    FUNC9(infoPtr, infoPtr->Notify, NF_REQUERY);

    FUNC16 (&nclm, sizeof(nclm));
    nclm.cbSize = sizeof(nclm);
    FUNC14 (SPI_GETNONCLIENTMETRICS, nclm.cbSize, &nclm, 0);
    infoPtr->hDefaultFont = FUNC1 (&nclm.lfStatusFont);

    FUNC3 (hwnd, &rect);

    /* initialize simple case */
    infoPtr->part0.bound = rect;
    infoPtr->part0.text = 0;
    infoPtr->part0.x = 0;
    infoPtr->part0.style = 0;
    infoPtr->part0.hIcon = 0;

    /* initialize first part */
    infoPtr->parts = FUNC0 (sizeof(STATUSWINDOWPART));
    if (!infoPtr->parts) goto create_fail;
    infoPtr->parts[0].bound = rect;
    infoPtr->parts[0].text = 0;
    infoPtr->parts[0].x = -1;
    infoPtr->parts[0].style = 0;
    infoPtr->parts[0].hIcon = 0;
    
    FUNC7 (hwnd, themeClass);

    if (lpCreate->lpszName && (len = FUNC18 ((LPCWSTR)lpCreate->lpszName)))
    {
        infoPtr->parts[0].text = FUNC0 ((len + 1)*sizeof(WCHAR));
        if (!infoPtr->parts[0].text) goto create_fail;
        FUNC17 (infoPtr->parts[0].text, (LPCWSTR)lpCreate->lpszName);
    }

    dwStyle = FUNC6 (hwnd, GWL_STYLE);
    /* native seems to clear WS_BORDER, too */
    dwStyle &= ~WS_BORDER;
    FUNC13 (hwnd, GWL_STYLE, dwStyle);

    infoPtr->height = FUNC8(infoPtr);

    if (dwStyle & SBT_TOOLTIPS) {
	infoPtr->hwndToolTip =
	    FUNC2 (0, TOOLTIPS_CLASSW, NULL, WS_POPUP | TTS_ALWAYSTIP,
			     CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
			     CW_USEDEFAULT, hwnd, 0,
			     (HINSTANCE)FUNC5(hwnd, GWLP_HINSTANCE), NULL);

	if (infoPtr->hwndToolTip) {
	    NMTOOLTIPSCREATED nmttc;

	    nmttc.hdr.hwndFrom = hwnd;
	    nmttc.hdr.idFrom = FUNC5 (hwnd, GWLP_ID);
	    nmttc.hdr.code = NM_TOOLTIPSCREATED;
	    nmttc.hwndToolTips = infoPtr->hwndToolTip;

	    FUNC11 (lpCreate->hwndParent, WM_NOTIFY, nmttc.hdr.idFrom, (LPARAM)&nmttc);
	}
    }

    return 0;

create_fail:
    FUNC15("    failed!\n");
    if (infoPtr) FUNC10(infoPtr);
    return -1;
}