
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int item ;
typedef int WCHAR ;
typedef int VOID ;
struct TYPE_6__ {int dwLanguage; } ;
struct TYPE_5__ {int mask; scalar_t__ iItem; int * pszText; } ;
typedef TYPE_1__ LV_ITEM ;
typedef int INT ;
typedef int HWND ;


 int ARRAYSIZE (int *) ;
 int IDS_CTRL_SHIFT ;
 int IDS_LEFT_ALT_SHIFT ;
 int IDS_NONE ;
 int IDS_SWITCH_BET_INLANG ;
 int LVIF_PARAM ;
 int LVIF_STATE ;
 int LVIF_TEXT ;
 int ListView_DeleteAllItems (int ) ;
 int ListView_InsertItem (int ,TYPE_1__*) ;
 int ListView_SetItemText (int ,int ,int,int *) ;
 int LoadStringW (int ,int ,int *,int ) ;
 int MAX_STR_LEN ;
 int ZeroMemory (TYPE_1__*,int) ;
 TYPE_2__ _KeySettings ;
 int hApplet ;

__attribute__((used)) static VOID
UpdateKeySettingsListView(HWND hwndList)
{
    WCHAR szBuffer[MAX_STR_LEN];
    LV_ITEM item;
    INT iItemIndex;

    ListView_DeleteAllItems(hwndList);

    ZeroMemory(&item, sizeof(item));

    LoadStringW(hApplet, IDS_SWITCH_BET_INLANG, szBuffer, ARRAYSIZE(szBuffer));
    item.mask = LVIF_TEXT | LVIF_PARAM | LVIF_STATE;
    item.pszText = szBuffer;
    item.iItem = 0;

    iItemIndex = ListView_InsertItem(hwndList, &item);

    if (_KeySettings.dwLanguage == 1)
    {
        LoadStringW(hApplet, IDS_LEFT_ALT_SHIFT, szBuffer, ARRAYSIZE(szBuffer));
    }
    else if (_KeySettings.dwLanguage == 2)
    {
        LoadStringW(hApplet, IDS_CTRL_SHIFT, szBuffer, ARRAYSIZE(szBuffer));
    }
    else
    {
        LoadStringW(hApplet, IDS_NONE, szBuffer, ARRAYSIZE(szBuffer));
    }

    ListView_SetItemText(hwndList, iItemIndex, 1, szBuffer);
}
