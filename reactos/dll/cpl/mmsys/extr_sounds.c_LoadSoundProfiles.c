
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGLOBAL_DATA ;
typedef int HWND ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ EnumerateSoundProfiles (int ,int ,int ) ;
 int FALSE ;
 int HKEY_CURRENT_USER ;
 int ImportSoundProfiles (int ,int ,int ) ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 int _T (char*) ;

BOOL
LoadSoundProfiles(PGLOBAL_DATA pGlobalData, HWND hwndDlg)
{
    HKEY hSubKey;
    DWORD dwNumSchemes;

    if (RegOpenKeyEx(HKEY_CURRENT_USER,
                     _T("AppEvents\\Schemes"),
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    dwNumSchemes = EnumerateSoundProfiles(pGlobalData, hwndDlg, hSubKey);


    if (dwNumSchemes)
    {

        ImportSoundProfiles(pGlobalData, hwndDlg, hSubKey);
    }

    RegCloseKey(hSubKey);
    return FALSE;
}
