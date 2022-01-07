
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iItem; scalar_t__ lParam; int mask; } ;
typedef TYPE_1__ LV_ITEM ;
typedef scalar_t__ LPAPPLICATION_PAGE_LIST_ITEM ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__) ;
 int LVIF_PARAM ;
 int ListView_GetItem (int ,TYPE_1__*) ;
 int ListView_GetItemCount (int ) ;
 int hApplicationPageListCtrl ;
 int memset (TYPE_1__*,int ,int) ;

void AppPageCleanup(void)
{
    int i;
    LV_ITEM item;
    LPAPPLICATION_PAGE_LIST_ITEM pData;
    for (i = 0; i < ListView_GetItemCount(hApplicationPageListCtrl); i++)
    {
        memset(&item, 0, sizeof(LV_ITEM));
        item.mask = LVIF_PARAM;
        item.iItem = i;
        (void)ListView_GetItem(hApplicationPageListCtrl, &item);
        pData = (LPAPPLICATION_PAGE_LIST_ITEM)item.lParam;
        HeapFree(GetProcessHeap(), 0, pData);
    }
}
