
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int szValue ;
struct TYPE_13__ {int szName; } ;
struct TYPE_12__ {int * szDefault; } ;
struct TYPE_11__ {int szValue; } ;
struct TYPE_10__ {int szName; } ;
typedef int TCHAR ;
typedef int PSOUND_SCHEME_CONTEXT ;
typedef TYPE_1__* PLABEL_MAP ;
typedef TYPE_2__* PLABEL_CONTEXT ;
typedef TYPE_3__* PGLOBAL_DATA ;
typedef TYPE_4__* PAPP_MAP ;
typedef int LPBYTE ;
typedef int HWND ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ExpandEnvironmentStrings (int *,int *,scalar_t__) ;
 int FALSE ;
 TYPE_2__* FindLabelContext (TYPE_3__*,int ,int ,int ) ;
 int FindSoundProfile (int ,int *) ;
 int KEY_READ ;
 int MAX_PATH ;
 scalar_t__ RegOpenKeyEx (int ,int *,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int *,int *,int *,int ,scalar_t__*) ;
 int TRUE ;
 int * _T (char*) ;
 scalar_t__ _countof (int *) ;
 int _tcscpy (int ,int *) ;
 int _tcsicmp (int *,int *) ;

BOOL
ImportSoundLabel(PGLOBAL_DATA pGlobalData, HWND hwndDlg, HKEY hKey, TCHAR * szProfile, TCHAR * szLabelName, TCHAR * szAppName, PAPP_MAP AppMap, PLABEL_MAP LabelMap)
{
    HKEY hSubKey;
    TCHAR szValue[MAX_PATH];
    TCHAR szBuffer[MAX_PATH];
    DWORD cbValue, cchLength;
    PSOUND_SCHEME_CONTEXT pScheme;
    PLABEL_CONTEXT pLabelContext;
    BOOL bCurrentProfile, bActiveProfile;



    bCurrentProfile = !_tcsicmp(szProfile, _T(".Current"));
    bActiveProfile = !_tcsicmp(szProfile, pGlobalData->szDefault);

    if (RegOpenKeyEx(hKey,
                     szProfile,
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    cbValue = sizeof(szValue);
    if (RegQueryValueEx(hSubKey,
                        ((void*)0),
                        ((void*)0),
                        ((void*)0),
                        (LPBYTE)szValue,
                        &cbValue) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    if (bCurrentProfile)
        pScheme = FindSoundProfile(hwndDlg, pGlobalData->szDefault);
    else
        pScheme = FindSoundProfile(hwndDlg, szProfile);

    if (!pScheme)
    {

        return FALSE;
    }
    pLabelContext = FindLabelContext(pGlobalData, pScheme, AppMap->szName, LabelMap->szName);

    cchLength = ExpandEnvironmentStrings(szValue, szBuffer, _countof(szBuffer));
    if (cchLength == 0 || cchLength > _countof(szBuffer))
    {

        return FALSE;
    }

    if (bCurrentProfile)
        _tcscpy(pLabelContext->szValue, szBuffer);
    else if (!bActiveProfile)
        _tcscpy(pLabelContext->szValue, szBuffer);

    return TRUE;
}
