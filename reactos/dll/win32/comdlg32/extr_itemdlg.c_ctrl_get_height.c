
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wrapper_hwnd; } ;
typedef TYPE_1__ customctrl ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ top; scalar_t__ bottom; } ;
typedef TYPE_2__ RECT ;


 int GetWindowRect (int ,TYPE_2__*) ;

__attribute__((used)) static UINT ctrl_get_height(customctrl *ctrl) {
    RECT rc;
    GetWindowRect(ctrl->wrapper_hwnd, &rc);
    return rc.bottom - rc.top;
}
