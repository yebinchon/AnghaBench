#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ti ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {int style; int /*<<< orphan*/  hwndParent; } ;
struct TYPE_9__ {int dwStyle; int lRangeMax; int lLineSize; int uTicFreq; scalar_t__ hwndToolTip; int /*<<< orphan*/  hwndNotify; int /*<<< orphan*/ * tics; scalar_t__ uNumTics; int /*<<< orphan*/  fLocation; scalar_t__ lPos; scalar_t__ lSelMax; scalar_t__ lSelMin; int /*<<< orphan*/  lPageSize; scalar_t__ lRangeMin; void* hwndSelf; } ;
struct TYPE_8__ {int cbSize; int uFlags; int /*<<< orphan*/ * lpszText; void* hwnd; } ;
typedef  TYPE_1__ TTTOOLINFOW ;
typedef  TYPE_2__ TRACKBAR_INFO ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  void* HWND ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  TYPE_3__ CREATESTRUCTW ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TBS_TOOLTIPS ; 
 int /*<<< orphan*/  TBTS_TOP ; 
 int /*<<< orphan*/  TB_DEFAULTPAGESIZE ; 
 int /*<<< orphan*/  TOOLTIPS_CLASSW ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int TTF_ABSOLUTE ; 
 int TTF_IDISHWND ; 
 int TTF_TRACK ; 
 int /*<<< orphan*/  TTM_ADDTOOLW ; 
 int /*<<< orphan*/  WS_POPUP ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  themeClass ; 

__attribute__((used)) static LRESULT
FUNC7 (HWND hwnd, const CREATESTRUCTW *lpcs)
{
    TRACKBAR_INFO *infoPtr;

    infoPtr = FUNC0 (sizeof(TRACKBAR_INFO));
    if (!infoPtr) return -1;
    FUNC4 (hwnd, 0, (DWORD_PTR)infoPtr);

    /* set default values */
    infoPtr->hwndSelf  = hwnd;
    infoPtr->dwStyle   = lpcs->style;
    infoPtr->lRangeMin = 0;
    infoPtr->lRangeMax = 100;
    infoPtr->lLineSize = 1;
    infoPtr->lPageSize = TB_DEFAULTPAGESIZE;
    infoPtr->lSelMin   = 0;
    infoPtr->lSelMax   = 0;
    infoPtr->lPos      = 0;
    infoPtr->fLocation = TBTS_TOP;
    infoPtr->uNumTics  = 0;    /* start and end tic are not included in count*/
    infoPtr->uTicFreq  = 1;
    infoPtr->tics      = NULL;
    infoPtr->hwndNotify= lpcs->hwndParent;

    FUNC5 (infoPtr);

    /* Create tooltip control */
    if (infoPtr->dwStyle & TBS_TOOLTIPS) {

    	infoPtr->hwndToolTip =
            FUNC1 (0, TOOLTIPS_CLASSW, NULL, WS_POPUP,
                             CW_USEDEFAULT, CW_USEDEFAULT,
                             CW_USEDEFAULT, CW_USEDEFAULT,
                             hwnd, 0, 0, 0);

    	if (infoPtr->hwndToolTip) {
            TTTOOLINFOW ti;
            WCHAR wEmpty = 0;
            FUNC6 (&ti, sizeof(ti));
            ti.cbSize   = sizeof(ti);
     	    ti.uFlags   = TTF_IDISHWND | TTF_TRACK | TTF_ABSOLUTE;
	    ti.hwnd     = hwnd;
            ti.lpszText = &wEmpty;

            FUNC3 (infoPtr->hwndToolTip, TTM_ADDTOOLW, 0, (LPARAM)&ti);
	 }
    }
    
    FUNC2 (hwnd, themeClass);

    return 0;
}