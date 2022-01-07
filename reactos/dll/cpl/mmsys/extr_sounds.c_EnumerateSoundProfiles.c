
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ szDefault; } ;
typedef int TCHAR ;
typedef TYPE_1__* PGLOBAL_DATA ;
typedef int LPBYTE ;
typedef int HWND ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ AddSoundProfile (int ,int ,int *,int) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyEx (int ,scalar_t__,int *,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int *,int *,int *,int ,scalar_t__*) ;
 int _T (char*) ;
 scalar_t__ _countof (int *) ;
 int _tcsicmp (int *,scalar_t__) ;

DWORD
EnumerateSoundProfiles(PGLOBAL_DATA pGlobalData, HWND hwndDlg, HKEY hKey)
{
    HKEY hSubKey;
    DWORD dwName, dwCurKey, dwResult, dwNumSchemes;
    DWORD cbDefault;
    TCHAR szName[MAX_PATH];

    cbDefault = sizeof(pGlobalData->szDefault);
    if (RegQueryValueEx(hKey,
                        ((void*)0),
                        ((void*)0),
                        ((void*)0),
                        (LPBYTE)pGlobalData->szDefault,
                        &cbDefault) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    if (RegOpenKeyEx(hKey,
                     _T("Names"),
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    dwNumSchemes = 0;
    dwCurKey = 0;
    do
    {
        dwName = _countof(szName);
        dwResult = RegEnumKeyEx(hSubKey,
                                dwCurKey,
                                szName,
                                &dwName,
                                ((void*)0),
                                ((void*)0),
                                ((void*)0),
                                ((void*)0));

        if (dwResult == ERROR_SUCCESS)
        {
            if (AddSoundProfile(hwndDlg, hSubKey, szName, (!_tcsicmp(szName, pGlobalData->szDefault))))
            {
                dwNumSchemes++;
            }
        }

        dwCurKey++;
    } while (dwResult == ERROR_SUCCESS);

    RegCloseKey(hSubKey);
    return dwNumSchemes;
}
