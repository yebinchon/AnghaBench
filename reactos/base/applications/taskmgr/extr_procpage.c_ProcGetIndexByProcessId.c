
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ProcessId; } ;
struct TYPE_5__ {int iItem; scalar_t__ lParam; int mask; } ;
typedef int LV_ITEM ;
typedef TYPE_1__ LVITEM ;
typedef TYPE_2__* LPPROCESS_PAGE_LIST_ITEM ;
typedef scalar_t__ DWORD ;


 int LVIF_PARAM ;
 int ListView_GetItem (int ,TYPE_1__*) ;
 int ListView_GetItemCount (int ) ;
 int hProcessPageListCtrl ;
 int memset (TYPE_1__*,int ,int) ;

int ProcGetIndexByProcessId(DWORD dwProcessId)
{
    int i;
    LVITEM item;
    LPPROCESS_PAGE_LIST_ITEM pData;

    for (i=0; i<ListView_GetItemCount(hProcessPageListCtrl); i++)
    {
        memset(&item, 0, sizeof(LV_ITEM));
        item.mask = LVIF_PARAM;
        item.iItem = i;
        (void)ListView_GetItem(hProcessPageListCtrl, &item);
        pData = (LPPROCESS_PAGE_LIST_ITEM)item.lParam;
        if (pData->ProcessId == dwProcessId)
        {
            return i;
        }
    }
    return 0;
}
