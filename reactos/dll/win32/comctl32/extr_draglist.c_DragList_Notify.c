
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int ptCursor; int uNotification; int hWnd; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_1__ DRAGLISTINFO ;


 int GetCursorPos (int *) ;
 int GetDlgCtrlID (int ) ;
 int GetParent (int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int uDragListMessage ;

__attribute__((used)) static LRESULT DragList_Notify(HWND hwndLB, UINT uNotification)
{
    DRAGLISTINFO dli;
    dli.hWnd = hwndLB;
    dli.uNotification = uNotification;
    GetCursorPos(&dli.ptCursor);
    return SendMessageW(GetParent(hwndLB), uDragListMessage, GetDlgCtrlID(hwndLB), (LPARAM)&dli);
}
