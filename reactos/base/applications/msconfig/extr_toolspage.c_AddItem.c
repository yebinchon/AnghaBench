
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t iItem; int iSubItem; int * pszText; scalar_t__ lParam; scalar_t__ iImage; int mask; } ;
typedef int TCHAR ;
typedef TYPE_1__ LV_ITEM ;
typedef int LPARAM ;
typedef void* DWORD ;


 int LVIF_TEXT ;
 int LVM_SETITEMTEXT ;
 void** ListItems_Cmds ;
 int* ListItems_Locations ;
 void** ListItems_Params ;
 size_t ListView_GetItemCount (int ) ;
 int ListView_InsertItem (int ,TYPE_1__*) ;
 int LoadString (int ,void*,int *,int) ;
 int SendMessage (int ,int ,size_t,int ) ;
 int hInst ;
 int hToolsListCtrl ;
 int memset (TYPE_1__*,int ,int) ;

void AddItem ( DWORD name_id, DWORD descr_id, DWORD cmd_id , DWORD param_id, int csidl ) {
    TCHAR szTemp[256];
    LV_ITEM item;

    LoadString(hInst, name_id, szTemp, 256);
    memset(&item, 0, sizeof(LV_ITEM));
    item.mask = LVIF_TEXT;
    item.iImage = 0;
    item.pszText = szTemp;
    item.iItem = ListView_GetItemCount(hToolsListCtrl);
    item.lParam = 0;
    (void)ListView_InsertItem(hToolsListCtrl, &item);

    ListItems_Cmds[item.iItem] = cmd_id;
    ListItems_Params[item.iItem] = param_id;
    ListItems_Locations[item.iItem] = csidl;

    LoadString(hInst, descr_id, szTemp, 256);
    item.pszText = szTemp;
    item.iSubItem = 1;
    SendMessage(hToolsListCtrl, LVM_SETITEMTEXT, item.iItem, (LPARAM) &item);
}
