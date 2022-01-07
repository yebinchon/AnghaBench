
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hwndNavigation; } ;
struct TYPE_8__ {int hwndTabCtrl; TYPE_1__ WinType; } ;
struct TYPE_7__ {scalar_t__ bottom; scalar_t__ right; } ;
typedef TYPE_2__ RECT ;
typedef int LRESULT ;
typedef scalar_t__ HWND ;
typedef TYPE_3__ HHInfo ;


 int GetClientRect (scalar_t__,TYPE_2__*) ;
 scalar_t__ GetWindowLongPtrW (scalar_t__,int ) ;
 int HWND_TOP ;
 int ResizeTabChild (TYPE_3__*,int ) ;
 int SWP_NOMOVE ;
 int SetWindowPos (int ,int ,int ,int ,scalar_t__,scalar_t__,int ) ;
 int TAB_CONTENTS ;
 int TAB_INDEX ;
 scalar_t__ TAB_RIGHT_PADDING ;
 int TAB_SEARCH ;
 scalar_t__ TAB_TOP_PADDING ;

__attribute__((used)) static LRESULT Child_OnSize(HWND hwnd)
{
    HHInfo *info = (HHInfo*)GetWindowLongPtrW(hwnd, 0);
    RECT rect;

    if(!info || hwnd != info->WinType.hwndNavigation)
        return 0;

    GetClientRect(hwnd, &rect);
    SetWindowPos(info->hwndTabCtrl, HWND_TOP, 0, 0,
                 rect.right - TAB_RIGHT_PADDING,
                 rect.bottom - TAB_TOP_PADDING, SWP_NOMOVE);

    ResizeTabChild(info, TAB_CONTENTS);
    ResizeTabChild(info, TAB_INDEX);
    ResizeTabChild(info, TAB_SEARCH);
    return 0;
}
