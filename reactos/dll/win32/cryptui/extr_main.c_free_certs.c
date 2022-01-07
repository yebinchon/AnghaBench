
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iItem; scalar_t__ lParam; scalar_t__ iSubItem; int mask; } ;
typedef int PCCERT_CONTEXT ;
typedef TYPE_1__ LVITEMW ;
typedef int LPARAM ;
typedef int HWND ;


 int CertFreeCertificateContext (int ) ;
 int LVIF_PARAM ;
 int LVM_GETITEMCOUNT ;
 int LVM_GETITEMW ;
 int SendMessageW (int ,int ,int ,int ) ;

__attribute__((used)) static void free_certs(HWND lv)
{
    LVITEMW item;
    int items = SendMessageW(lv, LVM_GETITEMCOUNT, 0, 0), i;

    for (i = 0; i < items; i++)
    {
        item.mask = LVIF_PARAM;
        item.iItem = i;
        item.iSubItem = 0;
        SendMessageW(lv, LVM_GETITEMW, 0, (LPARAM)&item);
        CertFreeCertificateContext((PCCERT_CONTEXT)item.lParam);
    }
}
