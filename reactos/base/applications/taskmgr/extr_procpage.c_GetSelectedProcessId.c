
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ProcessId; } ;
struct TYPE_5__ {int iItem; scalar_t__ lParam; int mask; } ;
typedef TYPE_1__ LVITEM ;
typedef TYPE_2__* LPPROCESS_PAGE_LIST_ITEM ;
typedef int DWORD ;


 int LVIF_PARAM ;
 int ListView_GetItem (int ,TYPE_1__*) ;
 int ListView_GetSelectedCount (int ) ;
 int ListView_GetSelectionMark (int ) ;
 int hProcessPageListCtrl ;
 int memset (TYPE_1__*,int ,int) ;

DWORD GetSelectedProcessId(void)
{
    int Index;
    LVITEM lvitem;

    if(ListView_GetSelectedCount(hProcessPageListCtrl) == 1)
    {
        Index = ListView_GetSelectionMark(hProcessPageListCtrl);

        memset(&lvitem, 0, sizeof(LVITEM));

        lvitem.mask = LVIF_PARAM;
        lvitem.iItem = Index;

        (void)ListView_GetItem(hProcessPageListCtrl, &lvitem);

        if (lvitem.lParam)
            return ((LPPROCESS_PAGE_LIST_ITEM)lvitem.lParam)->ProcessId;
    }

    return 0;
}
