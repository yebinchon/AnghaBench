
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_4__ {int top; int left; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;


 int ClipOrCenterRectToMonitor (TYPE_1__*,int ) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int SWP_NOACTIVATE ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int *,int ,int ,int ,int ,int) ;

VOID ClipOrCenterWindowToMonitor(HWND hWnd, UINT flags)
{
    RECT rc;
    GetWindowRect(hWnd, &rc);
    ClipOrCenterRectToMonitor(&rc, flags);
    SetWindowPos(hWnd, ((void*)0), rc.left, rc.top, 0, 0, SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);
}
