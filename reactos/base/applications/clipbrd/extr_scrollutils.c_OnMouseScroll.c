
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WORD ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ uLinesToScroll; scalar_t__ nPageY; scalar_t__ iWheelCarryoverY; scalar_t__ nPageX; scalar_t__ iWheelCarryoverX; } ;
typedef TYPE_1__* LPSCROLLSTATE ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;


 scalar_t__ GET_WHEEL_DELTA_WPARAM (int ) ;
 int MAKELONG (int ,int ) ;
 int OnScroll (int ,scalar_t__,int ,scalar_t__,TYPE_1__*) ;
 scalar_t__ SB_HORZ ;
 int SB_LINEDOWN ;
 int SB_LINEUP ;
 scalar_t__ SB_VERT ;
 scalar_t__ WHEEL_DELTA ;
 scalar_t__ WM_MOUSEHWHEEL ;
 scalar_t__ WM_MOUSEWHEEL ;
 int assert (int) ;

void OnMouseScroll(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam, LPSCROLLSTATE state)
{
    INT nBar;
    INT nPage;
    INT iDelta;
    UINT uLinesToScroll = state->uLinesToScroll;
    INT zDelta = GET_WHEEL_DELTA_WPARAM(wParam);
    WORD sbCode;

    assert(uMsg == WM_MOUSEWHEEL || uMsg == WM_MOUSEHWHEEL);

    if (uMsg == WM_MOUSEWHEEL)
    {
        nBar = SB_VERT;
        nPage = state->nPageY;


        zDelta += state->iWheelCarryoverY;
        state->iWheelCarryoverY = zDelta % WHEEL_DELTA;
    }
    else
    {
        nBar = SB_HORZ;
        nPage = state->nPageX;


        zDelta += state->iWheelCarryoverX;
        state->iWheelCarryoverX = zDelta % WHEEL_DELTA;
    }
    if (uLinesToScroll > nPage)
        uLinesToScroll = nPage;

    else if (uLinesToScroll == 0)
        return;


    if (zDelta > 0)
    {
        sbCode = SB_LINEUP;
    }
    else
    {
        sbCode = SB_LINEDOWN;
        zDelta = -zDelta;
    }


    iDelta = (INT)uLinesToScroll * zDelta / WHEEL_DELTA;

    OnScroll(hWnd, nBar, MAKELONG(sbCode, 0), iDelta, state);
}
