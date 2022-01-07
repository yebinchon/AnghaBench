
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HWND ;
typedef int HKEY ;


 int DirectPlay8SP ;
 int DirectPlaySP ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ EnumerateServiceProviders (int ,int ,int ) ;
 int GetDlgItem (int ,int ) ;
 int HKEY_LOCAL_MACHINE ;
 int IDC_LIST_PROVIDER ;
 int InitListViewColumns (int ) ;
 int KEY_READ ;
 int LVM_SETEXTENDEDLISTVIEWSTYLE ;
 int LVS_EX_FULLROWSELECT ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 int SendMessage (int ,int ,int ,int ) ;

__attribute__((used)) static
void
InitializeDirectPlayDialog(HWND hwndDlg)
{
    HKEY hKey;
    LONG result;
    HWND hDlgCtrl;


    result = RegOpenKeyExW(HKEY_LOCAL_MACHINE, L"SOFTWARE\\Microsoft\\DirectPlay8\\Service Providers", 0, KEY_READ, &hKey);
    if (result != ERROR_SUCCESS)
        return;

    hDlgCtrl = GetDlgItem(hwndDlg, IDC_LIST_PROVIDER);


    SendMessage(hDlgCtrl, LVM_SETEXTENDEDLISTVIEWSTYLE, 0, LVS_EX_FULLROWSELECT);


    InitListViewColumns(hDlgCtrl);


    result = EnumerateServiceProviders(hKey, hDlgCtrl, DirectPlay8SP);
    RegCloseKey(hKey);
    if (!result)
        return;


    result = RegOpenKeyExW(HKEY_LOCAL_MACHINE, L"SOFTWARE\\Microsoft\\DirectPlay\\Service Providers", 0, KEY_READ, &hKey);
    if (result != ERROR_SUCCESS)
        return;


    EnumerateServiceProviders(hKey, hDlgCtrl, DirectPlaySP);
    RegCloseKey(hKey);
}
