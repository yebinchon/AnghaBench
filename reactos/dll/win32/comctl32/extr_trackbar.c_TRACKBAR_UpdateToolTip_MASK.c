#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ti ;
typedef  char WCHAR ;
struct TYPE_14__ {int x; int y; } ;
struct TYPE_13__ {int right; int bottom; } ;
struct TYPE_10__ {int top; int bottom; int left; int right; } ;
struct TYPE_12__ {int dwStyle; scalar_t__ fLocation; int /*<<< orphan*/  hwndToolTip; int /*<<< orphan*/  hwndSelf; TYPE_1__ rcThumb; int /*<<< orphan*/  lPos; } ;
struct TYPE_11__ {int cbSize; int uFlags; char* lpszText; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_2__ TTTOOLINFOW ;
typedef  TYPE_3__ TRACKBAR_INFO ;
typedef  TYPE_4__ RECT ;
typedef  TYPE_5__ POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TBS_VERT ; 
 scalar_t__ TBTS_LEFT ; 
 scalar_t__ TBTS_TOP ; 
 int TOOLTIP_OFFSET ; 
 int TTF_ABSOLUTE ; 
 int TTF_IDISHWND ; 
 int TTF_TRACK ; 
 int /*<<< orphan*/  TTM_GETBUBBLESIZE ; 
 int /*<<< orphan*/  TTM_TRACKPOSITION ; 
 int /*<<< orphan*/  TTM_UPDATETIPTEXTW ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (const TRACKBAR_INFO *infoPtr)
{
    WCHAR buf[80];
    static const WCHAR fmt[] = { '%', 'l', 'd', 0 };
    TTTOOLINFOW ti;
    POINT pt;
    RECT rcClient;
    LRESULT size;

    if (!infoPtr->hwndToolTip) return;

    FUNC6(&ti, sizeof(ti));
    ti.cbSize = sizeof(ti);
    ti.hwnd   = infoPtr->hwndSelf;
    ti.uFlags = TTF_IDISHWND | TTF_TRACK | TTF_ABSOLUTE;

    FUNC7 (buf, fmt, infoPtr->lPos);
    ti.lpszText = buf;
    FUNC5 (infoPtr->hwndToolTip, TTM_UPDATETIPTEXTW, 0, (LPARAM)&ti);

    FUNC1 (infoPtr->hwndSelf, &rcClient);
    size = FUNC5 (infoPtr->hwndToolTip, TTM_GETBUBBLESIZE, 0, (LPARAM)&ti);
    if (infoPtr->dwStyle & TBS_VERT) {
	if (infoPtr->fLocation == TBTS_LEFT)
	    pt.x = 0 - FUNC3(size) - TOOLTIP_OFFSET;
	else
	    pt.x = rcClient.right + TOOLTIP_OFFSET;
    	pt.y = (infoPtr->rcThumb.top + infoPtr->rcThumb.bottom - FUNC2(size))/2;
    } else {
	if (infoPtr->fLocation == TBTS_TOP)
	    pt.y = 0 - FUNC2(size) - TOOLTIP_OFFSET;
	else
            pt.y = rcClient.bottom + TOOLTIP_OFFSET;
        pt.x = (infoPtr->rcThumb.left + infoPtr->rcThumb.right - FUNC3(size))/2;
    }
    FUNC0(infoPtr->hwndSelf, &pt);

    FUNC5 (infoPtr->hwndToolTip, TTM_TRACKPOSITION,
                  0, FUNC4(pt.x, pt.y));
}