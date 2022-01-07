
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t current_tab; TYPE_1__* tabs; int hwndTabCtrl; } ;
struct TYPE_3__ {int id; scalar_t__ hwnd; } ;
typedef int LRESULT ;
typedef int HWND ;
typedef TYPE_2__ HHInfo ;


 int FIXME (char*,int) ;
 scalar_t__ GetWindowLongPtrW (int ,int ) ;
 int SW_HIDE ;
 int SW_SHOW ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int ShowWindow (scalar_t__,int ) ;
 int TAB_NUMTABS ;
 int TCM_GETCURSEL ;
 int TRACE (char*,int ) ;

__attribute__((used)) static LRESULT OnTabChange(HWND hwnd)
{
    HHInfo *info = (HHInfo*)GetWindowLongPtrW(hwnd, 0);
    int tab_id, tab_index, i;

    TRACE("%p\n", hwnd);

    if (!info)
        return 0;

    if(info->tabs[info->current_tab].hwnd)
        ShowWindow(info->tabs[info->current_tab].hwnd, SW_HIDE);

    tab_id = (int) SendMessageW(info->hwndTabCtrl, TCM_GETCURSEL, 0, 0);

    tab_index = -1;
    for (i=0; i<TAB_NUMTABS; i++)
    {
        if (info->tabs[i].id == tab_id)
        {
            tab_index = i;
            break;
        }
    }
    if (tab_index == -1)
    {
        FIXME("Tab ID %d does not correspond to a valid index in the tab list.\n", tab_id);
        return 0;
    }
    info->current_tab = tab_index;

    if(info->tabs[info->current_tab].hwnd)
        ShowWindow(info->tabs[info->current_tab].hwnd, SW_SHOW);

    return 0;
}
