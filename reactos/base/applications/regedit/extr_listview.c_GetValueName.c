
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int iItem; scalar_t__ lParam; int mask; scalar_t__ iSubItem; } ;
struct TYPE_4__ {int * name; } ;
typedef TYPE_1__* PLINE_INFO ;
typedef TYPE_2__ LVITEMW ;
typedef int * LPCWSTR ;
typedef int HWND ;


 scalar_t__ FALSE ;
 int LVIF_PARAM ;
 int LVNI_SELECTED ;
 scalar_t__ ListView_GetItem (int ,TYPE_2__*) ;
 int ListView_GetNextItem (int ,int,int ) ;

LPCWSTR GetValueName(HWND hwndLV, int iStartAt)
{
    int item;
    LVITEMW LVItem;
    PLINE_INFO lineinfo;





    item = ListView_GetNextItem(hwndLV, iStartAt, LVNI_SELECTED);
    if (item == -1) return ((void*)0);




    LVItem.iItem = item;
    LVItem.iSubItem = 0;
    LVItem.mask = LVIF_PARAM;
    if (ListView_GetItem(hwndLV, &LVItem) == FALSE)
        return ((void*)0);

    lineinfo = (PLINE_INFO)LVItem.lParam;
    if (lineinfo == ((void*)0))
        return ((void*)0);

    return lineinfo->name;
}
