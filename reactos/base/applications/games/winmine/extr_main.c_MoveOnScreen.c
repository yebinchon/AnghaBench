
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mi ;
struct TYPE_7__ {int bottom; int top; int right; int left; } ;
struct TYPE_9__ {int cbSize; TYPE_1__ rcWork; } ;
struct TYPE_8__ {int bottom; int top; int right; int left; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ MONITORINFO ;
typedef int HMONITOR ;


 int GetMonitorInfoW (int ,TYPE_3__*) ;
 int MONITOR_DEFAULTTONEAREST ;
 int MonitorFromRect (TYPE_2__*,int ) ;
 int ShiftBetween (int *,int *,int ,int ) ;

__attribute__((used)) static void MoveOnScreen(RECT* rect)
{
    HMONITOR hMonitor;
    MONITORINFO mi;


    hMonitor = MonitorFromRect(rect, MONITOR_DEFAULTTONEAREST);


    mi.cbSize = sizeof(mi);
    GetMonitorInfoW(hMonitor, &mi);

    ShiftBetween(&rect->left, &rect->right, mi.rcWork.left, mi.rcWork.right);
    ShiftBetween(&rect->top, &rect->bottom, mi.rcWork.top, mi.rcWork.bottom);
}
