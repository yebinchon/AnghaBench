
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int HWND ;
typedef int BOOL ;


 int GetDlgItem (int ,int ) ;
 int IDC_CERTIFICATE_USAGES ;
 int find_oid_in_list (int ,int ) ;

__attribute__((used)) static BOOL is_oid_in_list(HWND hwnd, LPCSTR oid)
{
    return find_oid_in_list(GetDlgItem(hwnd, IDC_CERTIFICATE_USAGES), oid)
     != -1;
}
