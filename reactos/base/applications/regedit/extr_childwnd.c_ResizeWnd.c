
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int nSplitPos; int * hListWnd; int * hTreeWnd; int * hAddressBtnWnd; int * hAddressBarWnd; } ;
struct TYPE_5__ {int bottom; int top; int const left; int const right; } ;
typedef TYPE_1__ RECT ;
typedef scalar_t__ HDWP ;


 scalar_t__ BeginDeferWindowPos (int) ;
 scalar_t__ DeferWindowPos (scalar_t__,int *,int *,int const,int,int const,int const,int const) ;
 int EndDeferWindowPos (scalar_t__) ;
 int GetSystemMetrics (int ) ;
 int GetWindowRect (int *,TYPE_1__*) ;
 int SM_CYEDGE ;
 int SPLIT_WIDTH ;
 int SWP_NOACTIVATE ;
 int SWP_NOZORDER ;
 int SetRect (TYPE_1__*,int ,int ,int,int) ;
 TYPE_2__* g_pChildWnd ;
 int * hStatusBar ;

extern void ResizeWnd(int cx, int cy)
{
    HDWP hdwp = BeginDeferWindowPos(4);
    RECT rt, rs, rb;
    const int nButtonWidth = 44;
    const int nButtonHeight = 22;
    int cyEdge = GetSystemMetrics(SM_CYEDGE);
    const UINT uFlags = SWP_NOZORDER | SWP_NOACTIVATE;
    SetRect(&rt, 0, 0, cx, cy);
    cy = 0;
    if (hStatusBar != ((void*)0))
    {
        GetWindowRect(hStatusBar, &rs);
        cy = rs.bottom - rs.top;
    }
    GetWindowRect(g_pChildWnd->hAddressBtnWnd, &rb);
    cx = g_pChildWnd->nSplitPos + SPLIT_WIDTH / 2;
    if (hdwp)
        hdwp = DeferWindowPos(hdwp, g_pChildWnd->hAddressBarWnd, ((void*)0),
                              rt.left, rt.top,
                              rt.right - rt.left - nButtonWidth, nButtonHeight,
                              uFlags);
    if (hdwp)
        hdwp = DeferWindowPos(hdwp, g_pChildWnd->hAddressBtnWnd, ((void*)0),
                              rt.right - nButtonWidth, rt.top,
                              nButtonWidth, nButtonHeight,
                              uFlags);
    if (hdwp)
        hdwp = DeferWindowPos(hdwp, g_pChildWnd->hTreeWnd, ((void*)0),
                              rt.left,
                              rt.top + nButtonHeight + cyEdge,
                              g_pChildWnd->nSplitPos - SPLIT_WIDTH/2 - rt.left,
                              rt.bottom - rt.top - cy - 2 * cyEdge,
                              uFlags);
    if (hdwp)
        hdwp = DeferWindowPos(hdwp, g_pChildWnd->hListWnd, ((void*)0),
                              rt.left + cx,
                              rt.top + nButtonHeight + cyEdge,
                              rt.right - cx,
                              rt.bottom - rt.top - cy - 2 * cyEdge,
                              uFlags);
    if (hdwp)
        EndDeferWindowPos(hdwp);
}
