
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int item ;
struct TYPE_6__ {int cchTextMax; int pszText; void* iSubItem; int mask; } ;
struct TYPE_5__ {int hListView; } ;
typedef TYPE_1__* PMAIN_WND_INFO ;
typedef TYPE_2__ LVITEM ;
typedef int LPWSTR ;
typedef int LPARAM ;
typedef void* INT ;
typedef void* DWORD ;


 int LVIF_TEXT ;
 int LVM_GETITEMTEXTW ;
 scalar_t__ SendMessageW (int ,int ,void*,int ) ;
 int ZeroMemory (TYPE_2__*,int) ;

__attribute__((used)) static DWORD
GetTextFromListView(PMAIN_WND_INFO Info,
                    LPWSTR Text,
                    INT row,
                    INT col)
{
    LVITEM item;
    DWORD NumChars;

    ZeroMemory(&item, sizeof(item));
    item.mask = LVIF_TEXT;
    item.iSubItem = col;
    item.pszText = Text;
    item.cchTextMax = 500;
    NumChars = (INT)SendMessageW(Info->hListView,
                                 LVM_GETITEMTEXTW,
                                 row,
                                 (LPARAM)&item);
    return NumChars;
}
