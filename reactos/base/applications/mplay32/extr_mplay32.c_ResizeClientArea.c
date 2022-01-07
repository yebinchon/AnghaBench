
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {scalar_t__ top; scalar_t__ left; scalar_t__ bottom; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef int HWND ;


 int GetClientRect (int ,TYPE_1__*) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int MoveWindow (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int TRUE ;

void ResizeClientArea(HWND hwnd, int nWidth, int nHeight)
{
    RECT rcClientRect;
    RECT rcWindowRect;
    POINT ptDifference;

    GetClientRect(hwnd, &rcClientRect);
    GetWindowRect(hwnd, &rcWindowRect);
    ptDifference.x = (rcWindowRect.right - rcWindowRect.left) - rcClientRect.right;
    ptDifference.y = (rcWindowRect.bottom - rcWindowRect.top) - rcClientRect.bottom;
    MoveWindow(hwnd, rcWindowRect.left, rcWindowRect.top, nWidth + ptDifference.x, nHeight + ptDifference.y, TRUE);
}
