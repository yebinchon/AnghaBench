
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int right; } ;
typedef TYPE_1__ RECT ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int GetClientRect (int ,TYPE_1__*) ;
 int SB_SETPARTS ;
 int SendMessageW (int ,int ,int,int ) ;
 int WM_SIZE ;
 int hStatusBar ;

void SetupStatusBar(HWND hWnd, BOOL bResize)
{
    RECT rc;
    int nParts;
    GetClientRect(hWnd, &rc);
    nParts = rc.right;

    if (bResize)
        SendMessageW(hStatusBar, WM_SIZE, 0, 0);
    SendMessageW(hStatusBar, SB_SETPARTS, 1, (LPARAM)&nParts);
}
