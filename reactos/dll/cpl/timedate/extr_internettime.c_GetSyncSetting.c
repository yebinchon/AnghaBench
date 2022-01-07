
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VOID ;
typedef int LPBYTE ;
typedef int HWND ;
typedef int HKEY ;
typedef int DWORD ;


 int BM_SETCHECK ;
 int BST_CHECKED ;
 int BST_UNCHECKED ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int IDC_AUTOSYNC ;
 int KEY_QUERY_VALUE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int *,int ,int*) ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 scalar_t__ wcscmp (int *,char*) ;

__attribute__((used)) static VOID
GetSyncSetting(HWND hwnd)
{
    HKEY hKey;
    WCHAR szData[8];
    DWORD dwSize;

    if (RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                      L"SYSTEM\\CurrentControlSet\\Services\\W32Time\\Parameters",
                      0,
                      KEY_QUERY_VALUE,
                      &hKey) == ERROR_SUCCESS)
    {
        dwSize = 8 * sizeof(WCHAR);
        if (RegQueryValueExW(hKey,
                             L"Type",
                             ((void*)0),
                             ((void*)0),
                             (LPBYTE)szData,
                             &dwSize) == ERROR_SUCCESS)
        {
            if (wcscmp(szData, L"NTP") == 0)
                SendDlgItemMessageW(hwnd, IDC_AUTOSYNC, BM_SETCHECK, BST_CHECKED, 0);
            else
                SendDlgItemMessageW(hwnd, IDC_AUTOSYNC, BM_SETCHECK, BST_UNCHECKED, 0);
        }

        RegCloseKey(hKey);
    }
}
