
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int* LPWSTR ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int KEY_QUERY_VALUE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,int*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,int*,int *,scalar_t__*,int ,scalar_t__*) ;
 int TRUE ;

BOOL
GetRegValue(HKEY hBaseKey, LPWSTR SubKey, LPWSTR ValueName, DWORD Type, LPWSTR Result, DWORD Size)
{
    HKEY hKey;
    LONG res;
    DWORD dwType;
    DWORD dwSize;

    if (RegOpenKeyExW(hBaseKey, SubKey, 0, KEY_QUERY_VALUE, &hKey) != ERROR_SUCCESS)
        return FALSE;

    dwSize = Size;
    res = RegQueryValueExW(hKey, ValueName, ((void*)0), &dwType, (LPBYTE)Result, &dwSize);
    RegCloseKey(hKey);

    if (res != ERROR_SUCCESS)
        return FALSE;

    if (dwType != Type)
        return FALSE;

    if (Size == sizeof(DWORD))
        return TRUE;

    Result[(Size / sizeof(WCHAR))-1] = L'\0';
    return TRUE;
}
