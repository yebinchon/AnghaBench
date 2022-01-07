
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lParam; int mask; } ;
typedef TYPE_1__ TCITEMW ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HCERTSTORE ;


 int SendMessageW (int ,int ,int,int ) ;
 int TCIF_PARAM ;
 int TCM_GETITEMW ;

__attribute__((used)) static HCERTSTORE cert_mgr_index_to_store(HWND tab, int index)
{
    TCITEMW item;

    item.mask = TCIF_PARAM;
    SendMessageW(tab, TCM_GETITEMW, index, (LPARAM)&item);
    return (HCERTSTORE)item.lParam;
}
