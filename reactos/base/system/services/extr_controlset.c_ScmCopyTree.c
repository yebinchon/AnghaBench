
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int * LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int DPRINT (char*,...) ;
 int DPRINT1 (char*,...) ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,int *,int ,int *,int ,int ,int *,int *,scalar_t__*) ;
 scalar_t__ RegEnumKeyExW (int ,scalar_t__,int *,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegEnumValueW (int ,scalar_t__,int *,scalar_t__*,int *,scalar_t__*,int *,scalar_t__*) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKey (int ,int *,int *,int *,scalar_t__*,scalar_t__*,int *,scalar_t__*,scalar_t__*,scalar_t__*,int *,int *) ;
 scalar_t__ RegSetValueExW (int ,int *,int ,scalar_t__,int *,scalar_t__) ;

__attribute__((used)) static
DWORD
ScmCopyTree(
    HKEY hSrcKey,
    HKEY hDstKey)
{
    DWORD dwSubKeys;
    DWORD dwValues;
    DWORD dwType;
    DWORD dwMaxSubKeyNameLength;
    DWORD dwSubKeyNameLength;
    DWORD dwMaxValueNameLength;
    DWORD dwValueNameLength;
    DWORD dwMaxValueLength;
    DWORD dwValueLength;
    DWORD dwDisposition;
    DWORD i;
    LPWSTR lpNameBuffer;
    LPBYTE lpDataBuffer;
    HKEY hDstSubKey;
    HKEY hSrcSubKey;
    DWORD dwError;

    DPRINT("ScmCopyTree()\n");

    dwError = RegQueryInfoKey(hSrcKey,
                              ((void*)0),
                              ((void*)0),
                              ((void*)0),
                              &dwSubKeys,
                              &dwMaxSubKeyNameLength,
                              ((void*)0),
                              &dwValues,
                              &dwMaxValueNameLength,
                              &dwMaxValueLength,
                              ((void*)0),
                              ((void*)0));
    if (dwError != ERROR_SUCCESS)
    {
        DPRINT1("RegQueryInfoKey() failed (Error %lu)\n", dwError);
        return dwError;
    }

    dwMaxSubKeyNameLength++;
    dwMaxValueNameLength++;

    DPRINT("dwSubKeys %lu\n", dwSubKeys);
    DPRINT("dwMaxSubKeyNameLength %lu\n", dwMaxSubKeyNameLength);
    DPRINT("dwValues %lu\n", dwValues);
    DPRINT("dwMaxValueNameLength %lu\n", dwMaxValueNameLength);
    DPRINT("dwMaxValueLength %lu\n", dwMaxValueLength);


    if (dwSubKeys != 0)
    {
        lpNameBuffer = HeapAlloc(GetProcessHeap(),
                                 0,
                                 dwMaxSubKeyNameLength * sizeof(WCHAR));
        if (lpNameBuffer == ((void*)0))
        {
            DPRINT1("Buffer allocation failed\n");
            return ERROR_NOT_ENOUGH_MEMORY;
        }

        for (i = 0; i < dwSubKeys; i++)
        {
            dwSubKeyNameLength = dwMaxSubKeyNameLength;
            dwError = RegEnumKeyExW(hSrcKey,
                                    i,
                                    lpNameBuffer,
                                    &dwSubKeyNameLength,
                                    ((void*)0),
                                    ((void*)0),
                                    ((void*)0),
                                    ((void*)0));
            if (dwError != ERROR_SUCCESS)
            {
                DPRINT1("Subkey enumeration failed (Error %lu)\n", dwError);
                HeapFree(GetProcessHeap(),
                         0,
                         lpNameBuffer);
                return dwError;
            }

            dwError = RegCreateKeyExW(hDstKey,
                                      lpNameBuffer,
                                      0,
                                      ((void*)0),
                                      REG_OPTION_NON_VOLATILE,
                                      KEY_WRITE,
                                      ((void*)0),
                                      &hDstSubKey,
                                      &dwDisposition);
            if (dwError != ERROR_SUCCESS)
            {
                DPRINT1("Subkey creation failed (Error %lu)\n", dwError);
                HeapFree(GetProcessHeap(),
                         0,
                         lpNameBuffer);
                return dwError;
            }

            dwError = RegOpenKeyExW(hSrcKey,
                                    lpNameBuffer,
                                    0,
                                    KEY_READ,
                                    &hSrcSubKey);
            if (dwError != ERROR_SUCCESS)
            {
                DPRINT1("Error: %lu\n", dwError);
                RegCloseKey(hDstSubKey);
                HeapFree(GetProcessHeap(),
                         0,
                         lpNameBuffer);
                return dwError;
            }

            dwError = ScmCopyTree(hSrcSubKey,
                                  hDstSubKey);
            if (dwError != ERROR_SUCCESS)
            {
                DPRINT1("Error: %lu\n", dwError);
                RegCloseKey (hSrcSubKey);
                RegCloseKey (hDstSubKey);
                HeapFree(GetProcessHeap(),
                         0,
                         lpNameBuffer);
                return dwError;
            }

            RegCloseKey(hSrcSubKey);
            RegCloseKey(hDstSubKey);
        }

        HeapFree(GetProcessHeap(),
                 0,
                 lpNameBuffer);
    }


    if (dwValues != 0)
    {
        lpNameBuffer = HeapAlloc(GetProcessHeap(),
                                 0,
                                 dwMaxValueNameLength * sizeof(WCHAR));
        if (lpNameBuffer == ((void*)0))
        {
            DPRINT1("Buffer allocation failed\n");
            return ERROR_NOT_ENOUGH_MEMORY;
        }

        lpDataBuffer = HeapAlloc(GetProcessHeap(),
                                 0,
                                 dwMaxValueLength);
        if (lpDataBuffer == ((void*)0))
        {
            DPRINT1("Buffer allocation failed\n");
            HeapFree(GetProcessHeap(),
                     0,
                     lpNameBuffer);
            return ERROR_NOT_ENOUGH_MEMORY;
        }

        for (i = 0; i < dwValues; i++)
        {
            dwValueNameLength = dwMaxValueNameLength;
            dwValueLength = dwMaxValueLength;
            dwError = RegEnumValueW(hSrcKey,
                                    i,
                                    lpNameBuffer,
                                    &dwValueNameLength,
                                    ((void*)0),
                                    &dwType,
                                    lpDataBuffer,
                                    &dwValueLength);
            if (dwError != ERROR_SUCCESS)
            {
                DPRINT1("Error: %lu\n", dwError);
                HeapFree(GetProcessHeap(),
                         0,
                         lpDataBuffer);
                HeapFree(GetProcessHeap(),
                         0,
                         lpNameBuffer);
                return dwError;
            }

            dwError = RegSetValueExW(hDstKey,
                                     lpNameBuffer,
                                     0,
                                     dwType,
                                     lpDataBuffer,
                                     dwValueLength);
            if (dwError != ERROR_SUCCESS)
            {
                DPRINT1("Error: %lu\n", dwError);
                HeapFree(GetProcessHeap(),
                         0,
                         lpDataBuffer);
                HeapFree(GetProcessHeap(),
                         0,
                         lpNameBuffer);
                return dwError;
            }
        }

        HeapFree(GetProcessHeap(),
                 0,
                 lpDataBuffer);

        HeapFree(GetProcessHeap(),
                 0,
                 lpNameBuffer);
    }

    DPRINT("ScmCopyTree() done \n");

    return ERROR_SUCCESS;
}
