#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_6__ {int nSplitPos; int /*<<< orphan*/ * hListWnd; int /*<<< orphan*/ * hTreeWnd; int /*<<< orphan*/ * hAddressBtnWnd; int /*<<< orphan*/ * hAddressBarWnd; } ;
struct TYPE_5__ {int bottom; int top; int const left; int const right; } ;
typedef  TYPE_1__ RECT ;
typedef  scalar_t__ HDWP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const,int,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  SM_CYEDGE ; 
 int SPLIT_WIDTH ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* g_pChildWnd ; 
 int /*<<< orphan*/ * hStatusBar ; 

extern void FUNC6(int cx, int cy)
{
    HDWP hdwp = FUNC0(4);
    RECT rt, rs, rb;
    const int nButtonWidth = 44;
    const int nButtonHeight = 22;
    int cyEdge = FUNC3(SM_CYEDGE);
    const UINT uFlags = SWP_NOZORDER | SWP_NOACTIVATE;
    FUNC5(&rt, 0, 0, cx, cy);
    cy = 0;
    if (hStatusBar != NULL)
    {
        FUNC4(hStatusBar, &rs);
        cy = rs.bottom - rs.top;
    }
    FUNC4(g_pChildWnd->hAddressBtnWnd, &rb);
    cx = g_pChildWnd->nSplitPos + SPLIT_WIDTH / 2;
    if (hdwp)
        hdwp = FUNC1(hdwp, g_pChildWnd->hAddressBarWnd, NULL,
                              rt.left, rt.top,
                              rt.right - rt.left - nButtonWidth, nButtonHeight,
                              uFlags);
    if (hdwp)
        hdwp = FUNC1(hdwp, g_pChildWnd->hAddressBtnWnd, NULL,
                              rt.right - nButtonWidth, rt.top,
                              nButtonWidth, nButtonHeight,
                              uFlags);
    if (hdwp)
        hdwp = FUNC1(hdwp, g_pChildWnd->hTreeWnd, NULL,
                              rt.left,
                              rt.top + nButtonHeight + cyEdge,
                              g_pChildWnd->nSplitPos - SPLIT_WIDTH/2 - rt.left,
                              rt.bottom - rt.top - cy - 2 * cyEdge,
                              uFlags);
    if (hdwp)
        hdwp = FUNC1(hdwp, g_pChildWnd->hListWnd, NULL,
                              rt.left + cx,
                              rt.top + nButtonHeight + cyEdge,
                              rt.right - cx,
                              rt.bottom - rt.top - cy - 2 * cyEdge,
                              uFlags);
    if (hdwp)
        FUNC2(hdwp);
}