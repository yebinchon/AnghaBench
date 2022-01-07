
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edit_cert_data {int cert; } ;
typedef int WCHAR ;
typedef int PCCERT_CONTEXT ;
typedef int LPARAM ;
typedef int HWND ;


 int CERT_DESCRIPTION_PROP_ID ;
 int CERT_FRIENDLY_NAME_PROP_ID ;
 int GetDlgItem (int ,int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int IDC_DESCRIPTION ;
 int IDC_FRIENDLY_NAME ;
 int SendMessageW (int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int * get_cert_property_as_string (int ,int ) ;
 int show_cert_usages (int ,struct edit_cert_data*) ;

__attribute__((used)) static void set_general_cert_properties(HWND hwnd, struct edit_cert_data *data)
{
    PCCERT_CONTEXT cert = data->cert;
    WCHAR *str;

    if ((str = get_cert_property_as_string(cert, CERT_FRIENDLY_NAME_PROP_ID)))
    {
        SendMessageW(GetDlgItem(hwnd, IDC_FRIENDLY_NAME), WM_SETTEXT, 0,
         (LPARAM)str);
        HeapFree(GetProcessHeap(), 0, str);
    }
    if ((str = get_cert_property_as_string(cert, CERT_DESCRIPTION_PROP_ID)))
    {
        SendMessageW(GetDlgItem(hwnd, IDC_DESCRIPTION), WM_SETTEXT, 0,
         (LPARAM)str);
        HeapFree(GetProcessHeap(), 0, str);
    }
    show_cert_usages(hwnd, data);
}
