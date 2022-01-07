
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hsec; scalar_t__ himages; int hlv; struct TYPE_6__* zones; struct TYPE_6__* zone_attr; } ;
typedef TYPE_1__ secdlg_data ;
typedef int INT_PTR ;


 int DWLP_USER ;
 int ImageList_Destroy (scalar_t__) ;
 int LVM_SETIMAGELIST ;
 int LVSIL_NORMAL ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TRACE (char*,TYPE_1__*) ;
 int TRUE ;
 int heap_free (TYPE_1__*) ;
 int security_cleanup_zones (TYPE_1__*) ;

__attribute__((used)) static INT_PTR security_on_destroy(secdlg_data * sd)
{
    TRACE("(%p)\n", sd);

    heap_free(sd->zone_attr);
    heap_free(sd->zones);
    if (sd->himages) {
        SendMessageW(sd->hlv, LVM_SETIMAGELIST, LVSIL_NORMAL, 0);
        ImageList_Destroy(sd->himages);
    }

    security_cleanup_zones(sd);
    SetWindowLongPtrW(sd->hsec, DWLP_USER, 0);
    heap_free(sd);
    return TRUE;
}
