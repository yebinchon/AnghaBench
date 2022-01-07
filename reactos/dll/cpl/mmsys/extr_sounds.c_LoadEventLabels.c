
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int PGLOBAL_DATA ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 scalar_t__ LoadEventLabel (int ,int ,int *) ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyEx (int ,scalar_t__,int *,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 int _T (char*) ;
 scalar_t__ _countof (int *) ;

BOOL
LoadEventLabels(PGLOBAL_DATA pGlobalData)
{
    HKEY hSubKey;
    DWORD dwCurKey;
    TCHAR szName[MAX_PATH];
    DWORD dwName;
    DWORD dwResult;
    DWORD dwCount;
    if (RegOpenKeyEx(HKEY_CURRENT_USER,
                     _T("AppEvents\\EventLabels"),
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    dwCurKey = 0;
    dwCount = 0;
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
            if (LoadEventLabel(pGlobalData, hSubKey, szName))
            {
                dwCount++;
            }
        }
        dwCurKey++;

    } while (dwResult == ERROR_SUCCESS);

    RegCloseKey(hSubKey);
    return (dwCount != 0);
}
