
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int GetDlgItem (int ,int ) ;
 int IDC_MGR_CERTS ;
 int LVM_DELETEALLITEMS ;
 int SendMessageW (int ,int ,int ,int ) ;
 int cert_mgr_current_store (int ) ;
 int free_certs (int ) ;
 int show_store_certs (int ,int ) ;

__attribute__((used)) static void refresh_store_certs(HWND hwnd)
{
    HWND lv = GetDlgItem(hwnd, IDC_MGR_CERTS);

    free_certs(lv);
    SendMessageW(lv, LVM_DELETEALLITEMS, 0, 0);
    show_store_certs(hwnd, cert_mgr_current_store(hwnd));
}
