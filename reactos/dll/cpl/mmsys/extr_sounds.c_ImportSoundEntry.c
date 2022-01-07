
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* LabelMap; } ;
struct TYPE_10__ {struct TYPE_10__* Next; TYPE_2__* AppMap; } ;
typedef int TCHAR ;
typedef TYPE_1__* PLABEL_MAP ;
typedef int PGLOBAL_DATA ;
typedef TYPE_2__* PAPP_MAP ;
typedef int HWND ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int ASSERT (TYPE_1__*) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 TYPE_1__* FindLabel (int ,TYPE_2__*,int *) ;
 scalar_t__ ImportSoundLabel (int ,int ,int ,int *,int *,int *,TYPE_2__*,TYPE_1__*) ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyEx (int ,scalar_t__,int *,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyEx (int ,int *,int ,int ,int *) ;
 int RemoveLabel (int ,TYPE_1__*) ;
 scalar_t__ _countof (int *) ;

DWORD
ImportSoundEntry(PGLOBAL_DATA pGlobalData, HWND hwndDlg, HKEY hKey, TCHAR * szLabelName, TCHAR * szAppName, PAPP_MAP pAppMap)
{
    HKEY hSubKey;
    DWORD dwNumProfiles;
    DWORD dwCurKey;
    DWORD dwResult;
    DWORD dwProfile;
    TCHAR szProfile[MAX_PATH];
    PLABEL_MAP pLabel;

    if (RegOpenKeyEx(hKey,
                     szLabelName,
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }
    pLabel = FindLabel(pGlobalData, pAppMap, szLabelName);

    ASSERT(pLabel);
    RemoveLabel(pGlobalData, pLabel);

    pLabel->AppMap = pAppMap;
    pLabel->Next = pAppMap->LabelMap;
    pAppMap->LabelMap = pLabel;

    dwNumProfiles = 0;
    dwCurKey = 0;
    do
    {
        dwProfile = _countof(szProfile);
        dwResult = RegEnumKeyEx(hSubKey,
                                dwCurKey,
                                szProfile,
                                &dwProfile,
                                ((void*)0),
                                ((void*)0),
                                ((void*)0),
                                ((void*)0));

        if (dwResult == ERROR_SUCCESS)
        {
            if (ImportSoundLabel(pGlobalData, hwndDlg, hSubKey, szProfile, szLabelName, szAppName, pAppMap, pLabel))
            {
                dwNumProfiles++;
            }
        }

        dwCurKey++;
    } while (dwResult == ERROR_SUCCESS);

    RegCloseKey(hSubKey);

    return dwNumProfiles;
}
