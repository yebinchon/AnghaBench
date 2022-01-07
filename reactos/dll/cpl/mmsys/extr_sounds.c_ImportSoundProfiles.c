
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int PGLOBAL_DATA ;
typedef int HWND ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ ImportAppProfile (int ,int ,int ,int *) ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKey (int ,scalar_t__,int *,int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 int _T (char*) ;
 int _countof (int *) ;

BOOL
ImportSoundProfiles(PGLOBAL_DATA pGlobalData, HWND hwndDlg, HKEY hKey)
{
    DWORD dwCurKey;
    DWORD dwResult;
    DWORD dwNumApps;
    TCHAR szName[MAX_PATH];
    HKEY hSubKey;

    if (RegOpenKeyEx(hKey,
                     _T("Apps"),
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    dwNumApps = 0;
    dwCurKey = 0;
    do
    {
        dwResult = RegEnumKey(hSubKey,
                              dwCurKey,
                              szName,
                              _countof(szName));

        if (dwResult == ERROR_SUCCESS)
        {
            if (ImportAppProfile(pGlobalData, hwndDlg, hSubKey, szName))
            {
                dwNumApps++;
            }
        }
        dwCurKey++;
    } while (dwResult == ERROR_SUCCESS);

    RegCloseKey(hSubKey);

    return (dwNumApps != 0);
}
