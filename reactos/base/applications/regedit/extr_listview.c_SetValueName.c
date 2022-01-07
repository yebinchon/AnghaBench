
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int * psz; int flags; } ;
typedef TYPE_1__ LVFINDINFOW ;
typedef int * LPCWSTR ;
typedef scalar_t__ INT ;
typedef int HWND ;


 int LVFI_STRING ;
 int LVIS_FOCUSED ;
 int LVIS_SELECTED ;
 scalar_t__ ListView_FindItem (int ,int,TYPE_1__*) ;
 scalar_t__ ListView_GetItemCount (int ) ;
 int ListView_SetItemState (int ,scalar_t__,int,int) ;
 scalar_t__ iListViewSelect ;

VOID SetValueName(HWND hwndLV, LPCWSTR pszValueName)
{
    INT i, c;
    LVFINDINFOW fi;

    c = ListView_GetItemCount(hwndLV);
    for(i = 0; i < c; i++)
    {
        ListView_SetItemState(hwndLV, i, 0, LVIS_FOCUSED | LVIS_SELECTED);
    }
    if (pszValueName == ((void*)0))
        i = 0;
    else
    {
        fi.flags = LVFI_STRING;
        fi.psz = pszValueName;
        i = ListView_FindItem(hwndLV, -1, &fi);
    }
    ListView_SetItemState(hwndLV, i, LVIS_FOCUSED | LVIS_SELECTED,
                          LVIS_FOCUSED | LVIS_SELECTED);
    iListViewSelect = i;
}
