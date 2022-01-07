
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct taskdialog_template_desc {TYPE_1__* taskconfig; } ;
typedef int info ;
struct TYPE_8__ {unsigned int left; unsigned int right; int bottom; int top; } ;
struct TYPE_9__ {int cbSize; TYPE_2__ rcWork; } ;
struct TYPE_7__ {int dwFlags; scalar_t__ hwndParent; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ MONITORINFO ;
typedef int HMONITOR ;


 scalar_t__ GetActiveWindow () ;
 int GetMonitorInfoW (int ,TYPE_3__*) ;
 int GetWindowRect (scalar_t__,TYPE_2__*) ;
 int MONITOR_DEFAULTTOPRIMARY ;
 int MonitorFromWindow (scalar_t__,int ) ;
 int TDF_POSITION_RELATIVE_TO_WINDOW ;
 int pixels_to_dialogunits (struct taskdialog_template_desc const*,unsigned int*,int *) ;

__attribute__((used)) static unsigned int taskdialog_get_reference_rect(const struct taskdialog_template_desc *desc, RECT *ret)
{
    HMONITOR monitor = MonitorFromWindow(desc->taskconfig->hwndParent ? desc->taskconfig->hwndParent : GetActiveWindow(),
            MONITOR_DEFAULTTOPRIMARY);
    MONITORINFO info;

    info.cbSize = sizeof(info);
    GetMonitorInfoW(monitor, &info);

    if (desc->taskconfig->dwFlags & TDF_POSITION_RELATIVE_TO_WINDOW && desc->taskconfig->hwndParent)
        GetWindowRect(desc->taskconfig->hwndParent, ret);
    else
        *ret = info.rcWork;

    pixels_to_dialogunits(desc, &ret->left, &ret->top);
    pixels_to_dialogunits(desc, &ret->right, &ret->bottom);

    pixels_to_dialogunits(desc, &info.rcWork.left, &info.rcWork.top);
    pixels_to_dialogunits(desc, &info.rcWork.right, &info.rcWork.bottom);
    return info.rcWork.right - info.rcWork.left;
}
