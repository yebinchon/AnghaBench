
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int HCERTSTORE ;


 int GetDlgItem (int ,int ) ;
 int IDC_MGR_STORES ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TCM_GETCURSEL ;
 int cert_mgr_index_to_store (int ,int ) ;

__attribute__((used)) static HCERTSTORE cert_mgr_current_store(HWND hwnd)
{
    HWND tab = GetDlgItem(hwnd, IDC_MGR_STORES);

    return cert_mgr_index_to_store(tab, SendMessageW(tab, TCM_GETCURSEL, 0, 0));
}
