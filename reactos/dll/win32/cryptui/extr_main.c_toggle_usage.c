
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iItem; int state; int stateMask; scalar_t__ iSubItem; int mask; } ;
typedef TYPE_1__ LVITEMW ;
typedef int LPARAM ;
typedef int HWND ;


 int CheckBitmapIndexChecked ;
 int CheckBitmapIndexUnchecked ;
 int GetDlgItem (int ,int ) ;
 int IDC_CERTIFICATE_USAGES ;
 int INDEXTOSTATEIMAGEMASK (int) ;
 int LVIF_STATE ;
 int LVIS_STATEIMAGEMASK ;
 int LVM_GETITEMW ;
 int LVM_SETITEMSTATE ;
 int SendMessageW (int ,int ,int,int ) ;

__attribute__((used)) static void toggle_usage(HWND hwnd, int iItem)
{
    LVITEMW item;
    int res;
    HWND lv = GetDlgItem(hwnd, IDC_CERTIFICATE_USAGES);

    item.mask = LVIF_STATE;
    item.iItem = iItem;
    item.iSubItem = 0;
    item.stateMask = LVIS_STATEIMAGEMASK;
    res = SendMessageW(lv, LVM_GETITEMW, 0, (LPARAM)&item);
    if (res)
    {
        int state = item.state >> 12;

        item.state = INDEXTOSTATEIMAGEMASK(
         state == CheckBitmapIndexChecked ? CheckBitmapIndexUnchecked :
         CheckBitmapIndexChecked);
        SendMessageW(lv, LVM_SETITEMSTATE, iItem, (LPARAM)&item);
    }
}
