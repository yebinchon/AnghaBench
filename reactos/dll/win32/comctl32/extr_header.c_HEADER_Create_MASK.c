#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_9__ {int /*<<< orphan*/  style; int /*<<< orphan*/  hwndParent; } ;
struct TYPE_8__ {int iHotItem; int iHotDivider; int iMargin; int filter_change_timeout; scalar_t__ nHeight; int /*<<< orphan*/  hwndNotify; int /*<<< orphan*/  nNotifyFormat; scalar_t__ himl; scalar_t__ iMoveItem; int /*<<< orphan*/  dwStyle; void* bTracking; void* bPressed; void* hcurDivopen; void* hcurDivider; void* hcurArrow; void* bRectsValid; scalar_t__ order; scalar_t__ items; scalar_t__ hFont; scalar_t__ uNumItem; scalar_t__ hwndSelf; } ;
struct TYPE_7__ {scalar_t__ tmHeight; } ;
typedef  TYPE_1__ TEXTMETRICW ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  TYPE_2__ HEADER_INFO ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  TYPE_3__ CREATESTRUCTW ;

/* Variables and functions */
 int /*<<< orphan*/  COMCTL32_hModule ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ IDC_ARROW ; 
 int /*<<< orphan*/  IDC_DIVIDER ; 
 int /*<<< orphan*/  IDC_DIVIDEROPEN ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_QUERY ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXEDGE ; 
 int /*<<< orphan*/  SYSTEM_FONT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VERT_BORDER ; 
 int /*<<< orphan*/  WM_NOTIFYFORMAT ; 
 TYPE_2__* FUNC11 (int) ; 
 int /*<<< orphan*/  themeClass ; 

__attribute__((used)) static LRESULT
FUNC12 (HWND hwnd, const CREATESTRUCTW *lpcs)
{
    HEADER_INFO *infoPtr;
    TEXTMETRICW tm;
    HFONT hOldFont;
    HDC   hdc;

    infoPtr = FUNC11 (sizeof(*infoPtr));
    FUNC10 (hwnd, 0, (DWORD_PTR)infoPtr);

    infoPtr->hwndSelf = hwnd;
    infoPtr->hwndNotify = lpcs->hwndParent;
    infoPtr->uNumItem = 0;
    infoPtr->hFont = 0;
    infoPtr->items = 0;
    infoPtr->order = 0;
    infoPtr->bRectsValid = FALSE;
    infoPtr->hcurArrow = FUNC4 (0, (LPWSTR)IDC_ARROW);
    infoPtr->hcurDivider = FUNC4 (COMCTL32_hModule, FUNC5(IDC_DIVIDER));
    infoPtr->hcurDivopen = FUNC4 (COMCTL32_hModule, FUNC5(IDC_DIVIDEROPEN));
    infoPtr->bPressed  = FALSE;
    infoPtr->bTracking = FALSE;
    infoPtr->dwStyle = lpcs->style;
    infoPtr->iMoveItem = 0;
    infoPtr->himl = 0;
    infoPtr->iHotItem = -1;
    infoPtr->iHotDivider = -1;
    infoPtr->iMargin = 3*FUNC2(SM_CXEDGE);
    infoPtr->nNotifyFormat =
	FUNC9 (infoPtr->hwndNotify, WM_NOTIFYFORMAT, (WPARAM)hwnd, NF_QUERY);
    infoPtr->filter_change_timeout = 1000;

    hdc = FUNC0 (0);
    hOldFont = FUNC8 (hdc, FUNC1 (SYSTEM_FONT));
    FUNC3 (hdc, &tm);
    infoPtr->nHeight = tm.tmHeight + VERT_BORDER;
    FUNC8 (hdc, hOldFont);
    FUNC7 (0, hdc);

    FUNC6(hwnd, themeClass);

    return 0;
}