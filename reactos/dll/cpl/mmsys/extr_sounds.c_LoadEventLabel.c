
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int szDesc ;
typedef int szData ;
struct TYPE_6__ {TYPE_1__* pLabelMap; } ;
struct TYPE_5__ {struct TYPE_5__* Next; void* szIcon; void* szDesc; void* szName; } ;
typedef int TCHAR ;
typedef TYPE_1__* PLABEL_MAP ;
typedef TYPE_2__* PGLOBAL_DATA ;
typedef int LPBYTE ;
typedef int LABEL_MAP ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int *,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int *,int *,int *,int ,int*) ;
 int TRUE ;
 int * _T (char*) ;
 void* _tcsdup (int *) ;

BOOL
LoadEventLabel(PGLOBAL_DATA pGlobalData, HKEY hKey, TCHAR * szSubKey)
{
    HKEY hSubKey;
    DWORD cbValue;
    TCHAR szDesc[MAX_PATH];
    TCHAR szData[MAX_PATH];
    PLABEL_MAP pMap;

    if (RegOpenKeyEx(hKey,
                     szSubKey,
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    cbValue = sizeof(szDesc);
    if (RegQueryValueEx(hSubKey,
                      ((void*)0),
                      ((void*)0),
                      ((void*)0),
                      (LPBYTE)szDesc,
                      &cbValue) != ERROR_SUCCESS)
    {
        RegCloseKey(hSubKey);
        return FALSE;
    }

    cbValue = sizeof(szData);
    if (RegQueryValueEx(hSubKey,
                        _T("DispFileName"),
                        ((void*)0),
                        ((void*)0),
                        (LPBYTE)szData,
                        &cbValue) != ERROR_SUCCESS)
    {
        RegCloseKey(hSubKey);
        return FALSE;
    }

    pMap = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(LABEL_MAP));
    if (!pMap)
    {
        return FALSE;
    }

    pMap->szName = _tcsdup(szSubKey);
    pMap->szDesc = _tcsdup(szDesc);
    pMap->szIcon = _tcsdup(szData);

    if (pGlobalData->pLabelMap)
    {
        pMap->Next = pGlobalData->pLabelMap;
        pGlobalData->pLabelMap = pMap;
    }
    else
    {
        pGlobalData->pLabelMap = pMap;
        pGlobalData->pLabelMap->Next = ((void*)0);
    }
    return TRUE;
}
