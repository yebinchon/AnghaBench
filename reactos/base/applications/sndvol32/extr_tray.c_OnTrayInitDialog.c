
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef int LPARAM ;
typedef scalar_t__ LONG ;
typedef int HWND ;


 int GetCursorPos (TYPE_2__*) ;
 int GetDesktopWindow () ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int HWND_TOPMOST ;
 int SWP_NOSIZE ;
 int SetWindowPos (int ,int ,scalar_t__,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static VOID
OnTrayInitDialog(
    HWND hwnd,
    WPARAM wParam,
    LPARAM lParam)
{
    POINT ptCursor;
    RECT rcWindow;
    RECT rcScreen;
    LONG x, y, cx, cy;

    GetCursorPos(&ptCursor);

    GetWindowRect(hwnd, &rcWindow);

    GetWindowRect(GetDesktopWindow(), &rcScreen);

    cx = rcWindow.right - rcWindow.left;
    cy = rcWindow.bottom - rcWindow.top;

    if (ptCursor.y + cy > rcScreen.bottom)
        y = ptCursor.y - cy;
    else
        y = ptCursor.y;

    if (ptCursor.x + cx > rcScreen.right)
        x = ptCursor.x - cx;
    else
        x = ptCursor.x;

    SetWindowPos(hwnd, HWND_TOPMOST, x, y, 0, 0, SWP_NOSIZE);
}
