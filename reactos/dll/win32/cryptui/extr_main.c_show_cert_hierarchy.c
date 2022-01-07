
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hierarchy_data {int pCertViewInfo; } ;
typedef int HWND ;


 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_VIEWCERTIFICATE ;
 int set_certificate_status_for_end_cert (int ,int ) ;
 int show_cert_chain (int ,struct hierarchy_data*) ;

__attribute__((used)) static void show_cert_hierarchy(HWND hwnd, struct hierarchy_data *data)
{

    EnableWindow(GetDlgItem(hwnd, IDC_VIEWCERTIFICATE), FALSE);
    show_cert_chain(hwnd, data);
    set_certificate_status_for_end_cert(hwnd, data->pCertViewInfo);
}
