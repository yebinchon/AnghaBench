#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  hwndList; int /*<<< orphan*/  hwndEdit; } ;
struct TYPE_8__ {int /*<<< orphan*/  hwndNavigation; } ;
struct TYPE_12__ {TYPE_3__ search; TYPE_2__* tabs; int /*<<< orphan*/  hwndTabCtrl; TYPE_1__ WinType; } ;
struct TYPE_11__ {int left; int top; int bottom; int right; } ;
struct TYPE_9__ {int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_4__ RECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_5__ HHInfo ;
typedef  int DWORD ;

/* Variables and functions */
 int EDIT_HEIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LVM_SETCOLUMNWIDTH ; 
 int /*<<< orphan*/  SM_CXBORDER ; 
 int /*<<< orphan*/  SM_CXEDGE ; 
 int /*<<< orphan*/  SM_CXVSCROLL ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOZORDER ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int,int) ; 
#define  TAB_INDEX 129 
 int TAB_MARGIN ; 
 int TAB_RIGHT_PADDING ; 
#define  TAB_SEARCH 128 
 int TAB_TOP_PADDING ; 
 int /*<<< orphan*/  TCM_GETITEMRECT ; 
 int /*<<< orphan*/  TCM_GETROWCOUNT ; 

__attribute__((used)) static void FUNC4(HHInfo *info, int tab)
{
    HWND hwnd = info->tabs[tab].hwnd;
    INT width, height;
    RECT rect, tabrc;
    DWORD cnt;

    FUNC0(info->WinType.hwndNavigation, &rect);
    FUNC2(info->hwndTabCtrl, TCM_GETITEMRECT, 0, (LPARAM)&tabrc);
    cnt = FUNC2(info->hwndTabCtrl, TCM_GETROWCOUNT, 0, 0);

    rect.left = TAB_MARGIN;
    rect.top = TAB_TOP_PADDING + cnt*(tabrc.bottom-tabrc.top) + TAB_MARGIN;
    rect.right -= TAB_RIGHT_PADDING + TAB_MARGIN;
    rect.bottom -= TAB_MARGIN;
    width = rect.right-rect.left;
    height = rect.bottom-rect.top;

    FUNC3(hwnd, NULL, rect.left, rect.top, width, height,
                 SWP_NOZORDER | SWP_NOACTIVATE);

    switch (tab)
    {
    case TAB_INDEX: {
        int scroll_width = FUNC1(SM_CXVSCROLL);
        int border_width = FUNC1(SM_CXBORDER);
        int edge_width = FUNC1(SM_CXEDGE);

        /* Resize the tab widget column to perfectly fit the tab window and
         * leave sufficient space for the scroll widget.
         */
        FUNC2(info->tabs[TAB_INDEX].hwnd, LVM_SETCOLUMNWIDTH, 0,
                     width-scroll_width-2*border_width-2*edge_width);

        break;
    }
    case TAB_SEARCH: {
        int scroll_width = FUNC1(SM_CXVSCROLL);
        int border_width = FUNC1(SM_CXBORDER);
        int edge_width = FUNC1(SM_CXEDGE);
        int top_pos = 0;

        FUNC3(info->search.hwndEdit, NULL, 0, top_pos, width,
                      EDIT_HEIGHT, SWP_NOZORDER | SWP_NOACTIVATE);
        top_pos += EDIT_HEIGHT + TAB_MARGIN;
        FUNC3(info->search.hwndList, NULL, 0, top_pos, width,
                      height-top_pos, SWP_NOZORDER | SWP_NOACTIVATE);
        /* Resize the tab widget column to perfectly fit the tab window and
         * leave sufficient space for the scroll widget.
         */
        FUNC2(info->search.hwndList, LVM_SETCOLUMNWIDTH, 0,
                     width-scroll_width-2*border_width-2*edge_width);

        break;
    }
    }
}