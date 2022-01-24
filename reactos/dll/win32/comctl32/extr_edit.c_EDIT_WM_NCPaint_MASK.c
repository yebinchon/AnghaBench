#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_6__ {int left; int top; scalar_t__ bottom; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  scalar_t__ HWND ;
typedef  scalar_t__ HTHEME ;
typedef  scalar_t__ HRGN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int,scalar_t__,scalar_t__) ; 
 int DCX_INTERSECTRGN ; 
 int DCX_WINDOW ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int const,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int EP_EDITTEXT ; 
 int ES_READONLY ; 
 int ETS_DISABLED ; 
 int ETS_FOCUSED ; 
 int ETS_NORMAL ; 
 int ETS_READONLY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,int const,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  RGN_AND ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXEDGE ; 
 int /*<<< orphan*/  SM_CYEDGE ; 
 int /*<<< orphan*/  WM_NCPAINT ; 
 int WS_EX_CLIENTEDGE ; 

__attribute__((used)) static void FUNC17(HWND hwnd, HRGN region)
{
    DWORD exStyle = FUNC10(hwnd, GWL_EXSTYLE);
    HTHEME theme = FUNC12(hwnd);
    HRGN cliprgn = region;

    if (theme && exStyle & WS_EX_CLIENTEDGE)
    {
        HDC dc;
        RECT r;
        int cxEdge = FUNC8(SM_CXEDGE),
            cyEdge = FUNC8(SM_CYEDGE);
        const int part = EP_EDITTEXT;
        int state = ETS_NORMAL;
        DWORD dwStyle = FUNC10(hwnd, GWL_STYLE);

        if (!FUNC14(hwnd))
            state = ETS_DISABLED;
        else if (dwStyle & ES_READONLY)
            state = ETS_READONLY;
        else if (FUNC7() == hwnd)
            state = ETS_FOCUSED;

        FUNC11(hwnd, &r);

        /* New clipping region passed to default proc to exclude border */
        cliprgn = FUNC1(r.left + cxEdge, r.top + cyEdge,
            r.right - cxEdge, r.bottom - cyEdge);
        if (region != (HRGN)1)
            FUNC0(cliprgn, cliprgn, region, RGN_AND);
        FUNC15(&r, -r.left, -r.top);

#ifdef __REACTOS__ /* r73789 */
        dc = GetWindowDC(hwnd);
        /* Exclude client part */
        ExcludeClipRect(dc,
                        r.left + cxEdge,
                        r.top + cyEdge,
                        r.right - cxEdge,
                        r.bottom -cyEdge);
#else
        dc = FUNC6(hwnd, region, DCX_WINDOW|DCX_INTERSECTRGN);
        FUNC15(&r, -r.left, -r.top);
#endif

        if (FUNC13(theme, part, state))
            FUNC4(hwnd, dc, &r);
        FUNC3(theme, dc, part, state, &r, 0);
        FUNC16(hwnd, dc);
    }

    /* Call default proc to get the scrollbars etc. also painted */
    FUNC2 (hwnd, WM_NCPAINT, (WPARAM)cliprgn, 0);
}