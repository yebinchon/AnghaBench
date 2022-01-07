
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * PWSTR ;
typedef int * PCWSTR ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int KEY_READ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegDeleteKeyW (int *,int *) ;
 scalar_t__ RegDeleteValueW (int *,int *) ;
 scalar_t__ RegEnumKeyExW (int *,int ,int *,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegEnumValueW (int *,int ,int *,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int *,int *,int ,int ,int **) ;
 scalar_t__ RegQueryInfoKeyW (int *,int *,int *,int *,int *,scalar_t__*,int *,int *,scalar_t__*,int *,int *,int *) ;
 scalar_t__ TRUE ;
 scalar_t__ max (scalar_t__,scalar_t__) ;

DWORD
ScmDeleteTree(
    HKEY hKey,
    PCWSTR pszSubKey)
{
    DWORD dwMaxSubkeyLength, dwMaxValueLength;
    DWORD dwMaxLength, dwSize;
    PWSTR pszName = ((void*)0);
    HKEY hSubKey = ((void*)0);
    DWORD dwError;

    if (pszSubKey != ((void*)0))
    {
        dwError = RegOpenKeyExW(hKey, pszSubKey, 0, KEY_READ, &hSubKey);
        if (dwError != ERROR_SUCCESS)
            return dwError;
    }
    else
    {
         hSubKey = hKey;
    }


    dwError = RegQueryInfoKeyW(hSubKey,
                               ((void*)0),
                               ((void*)0),
                               ((void*)0),
                               ((void*)0),
                               &dwMaxSubkeyLength,
                               ((void*)0),
                               ((void*)0),
                               &dwMaxValueLength,
                               ((void*)0),
                               ((void*)0),
                               ((void*)0));
    if (dwError != ERROR_SUCCESS)
        goto done;

    dwMaxSubkeyLength++;
    dwMaxValueLength++;
    dwMaxLength = max(dwMaxSubkeyLength, dwMaxValueLength);


    pszName = HeapAlloc(GetProcessHeap(),
                         0,
                         dwMaxLength * sizeof(WCHAR));
    if (pszName == ((void*)0))
    {
        dwError = ERROR_NOT_ENOUGH_MEMORY;
        goto done;
    }


    while (TRUE)
    {
        dwSize = dwMaxLength;
        if (RegEnumKeyExW(hSubKey,
                          0,
                          pszName,
                          &dwSize,
                          ((void*)0),
                          ((void*)0),
                          ((void*)0),
                          ((void*)0)))
            break;

        dwError = ScmDeleteTree(hSubKey, pszName);
        if (dwError != ERROR_SUCCESS)
            goto done;
    }

    if (pszSubKey != ((void*)0))
    {
        dwError = RegDeleteKeyW(hKey, pszSubKey);
    }
    else
    {
        while (TRUE)
        {
            dwSize = dwMaxLength;
            if (RegEnumValueW(hKey,
                              0,
                              pszName,
                              &dwSize,
                              ((void*)0),
                              ((void*)0),
                              ((void*)0),
                              ((void*)0)))
                break;

            dwError = RegDeleteValueW(hKey, pszName);
            if (dwError != ERROR_SUCCESS)
                goto done;
        }
    }

done:
    if (pszName != ((void*)0))
        HeapFree(GetProcessHeap(), 0, pszName);

    if (pszSubKey != ((void*)0))
        RegCloseKey(hSubKey);

    return dwError;
}
