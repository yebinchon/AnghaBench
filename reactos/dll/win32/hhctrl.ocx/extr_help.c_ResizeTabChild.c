
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int hwndList; int hwndEdit; } ;
struct TYPE_8__ {int hwndNavigation; } ;
struct TYPE_12__ {TYPE_3__ search; TYPE_2__* tabs; int hwndTabCtrl; TYPE_1__ WinType; } ;
struct TYPE_11__ {int left; int top; int bottom; int right; } ;
struct TYPE_9__ {int hwnd; } ;
typedef TYPE_4__ RECT ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;
typedef TYPE_5__ HHInfo ;
typedef int DWORD ;


 int EDIT_HEIGHT ;
 int GetClientRect (int ,TYPE_4__*) ;
 int GetSystemMetrics (int ) ;
 int LVM_SETCOLUMNWIDTH ;
 int SM_CXBORDER ;
 int SM_CXEDGE ;
 int SM_CXVSCROLL ;
 int SWP_NOACTIVATE ;
 int SWP_NOZORDER ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetWindowPos (int ,int *,int,int,int,int,int) ;

 int TAB_MARGIN ;
 int TAB_RIGHT_PADDING ;

 int TAB_TOP_PADDING ;
 int TCM_GETITEMRECT ;
 int TCM_GETROWCOUNT ;

__attribute__((used)) static void ResizeTabChild(HHInfo *info, int tab)
{
    HWND hwnd = info->tabs[tab].hwnd;
    INT width, height;
    RECT rect, tabrc;
    DWORD cnt;

    GetClientRect(info->WinType.hwndNavigation, &rect);
    SendMessageW(info->hwndTabCtrl, TCM_GETITEMRECT, 0, (LPARAM)&tabrc);
    cnt = SendMessageW(info->hwndTabCtrl, TCM_GETROWCOUNT, 0, 0);

    rect.left = TAB_MARGIN;
    rect.top = TAB_TOP_PADDING + cnt*(tabrc.bottom-tabrc.top) + TAB_MARGIN;
    rect.right -= TAB_RIGHT_PADDING + TAB_MARGIN;
    rect.bottom -= TAB_MARGIN;
    width = rect.right-rect.left;
    height = rect.bottom-rect.top;

    SetWindowPos(hwnd, ((void*)0), rect.left, rect.top, width, height,
                 SWP_NOZORDER | SWP_NOACTIVATE);

    switch (tab)
    {
    case 129: {
        int scroll_width = GetSystemMetrics(SM_CXVSCROLL);
        int border_width = GetSystemMetrics(SM_CXBORDER);
        int edge_width = GetSystemMetrics(SM_CXEDGE);




        SendMessageW(info->tabs[129].hwnd, LVM_SETCOLUMNWIDTH, 0,
                     width-scroll_width-2*border_width-2*edge_width);

        break;
    }
    case 128: {
        int scroll_width = GetSystemMetrics(SM_CXVSCROLL);
        int border_width = GetSystemMetrics(SM_CXBORDER);
        int edge_width = GetSystemMetrics(SM_CXEDGE);
        int top_pos = 0;

        SetWindowPos(info->search.hwndEdit, ((void*)0), 0, top_pos, width,
                      EDIT_HEIGHT, SWP_NOZORDER | SWP_NOACTIVATE);
        top_pos += EDIT_HEIGHT + TAB_MARGIN;
        SetWindowPos(info->search.hwndList, ((void*)0), 0, top_pos, width,
                      height-top_pos, SWP_NOZORDER | SWP_NOACTIVATE);



        SendMessageW(info->search.hwndList, LVM_SETCOLUMNWIDTH, 0,
                     width-scroll_width-2*border_width-2*edge_width);

        break;
    }
    }
}
