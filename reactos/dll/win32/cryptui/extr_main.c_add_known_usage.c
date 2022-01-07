
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mask; scalar_t__ pszText; scalar_t__ lParam; scalar_t__ iSubItem; int iItem; int stateMask; int state; } ;
struct TYPE_4__ {scalar_t__ pwszName; } ;
typedef TYPE_1__* PCCRYPT_OID_INFO ;
typedef TYPE_2__ LVITEMW ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef int CheckBitmapIndex ;


 int INDEXTOSTATEIMAGEMASK (int ) ;
 int LVIF_PARAM ;
 int LVIF_STATE ;
 int LVIF_TEXT ;
 int LVIS_STATEIMAGEMASK ;
 int LVM_GETITEMCOUNT ;
 int LVM_INSERTITEMW ;
 int SendMessageW (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void add_known_usage(HWND lv, PCCRYPT_OID_INFO info,
 CheckBitmapIndex state)
{
    LVITEMW item;

    item.mask = LVIF_TEXT | LVIF_STATE | LVIF_PARAM;
    item.state = INDEXTOSTATEIMAGEMASK(state);
    item.stateMask = LVIS_STATEIMAGEMASK;
    item.iItem = SendMessageW(lv, LVM_GETITEMCOUNT, 0, 0);
    item.iSubItem = 0;
    item.lParam = (LPARAM)info;
    item.pszText = (LPWSTR)info->pwszName;
    SendMessageW(lv, LVM_INSERTITEMW, 0, (LPARAM)&item);
}
