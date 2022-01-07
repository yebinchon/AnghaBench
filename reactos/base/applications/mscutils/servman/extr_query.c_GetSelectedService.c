
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lParam; int iItem; int mask; } ;
struct TYPE_4__ {int hListView; int SelectedItem; } ;
typedef TYPE_1__* PMAIN_WND_INFO ;
typedef TYPE_2__ LVITEM ;
typedef int LPARAM ;
typedef int ENUM_SERVICE_STATUS_PROCESS ;


 int LVIF_PARAM ;
 int LVM_GETITEM ;
 int SendMessage (int ,int ,int ,int ) ;

ENUM_SERVICE_STATUS_PROCESS*
GetSelectedService(PMAIN_WND_INFO Info)
{
    LVITEM lvItem;

    lvItem.mask = LVIF_PARAM;
    lvItem.iItem = Info->SelectedItem;
    SendMessage(Info->hListView,
                LVM_GETITEM,
                0,
                (LPARAM)&lvItem);


    return (ENUM_SERVICE_STATUS_PROCESS *)lvItem.lParam;
}
