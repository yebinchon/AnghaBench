
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPTSTR ;
typedef scalar_t__ LPCTSTR ;
typedef int LPBYTE ;
typedef int LONG ;
typedef int * HKEY ;
typedef int DWORD ;


 int ERROR_SUCCESS ;
 int REG_SZ ;
 int RegCloseKey (int *) ;
 int RegOpenKey (int *,scalar_t__,int **) ;
 int RegQueryValueEx (int *,scalar_t__,int *,int*,int ,int*) ;
 int _T (char) ;

LONG QueryStringValue(HKEY hKey, LPCTSTR lpSubKey, LPCTSTR lpValueName, LPTSTR pszBuffer, DWORD dwBufferLen)
{
    LONG lResult;
    HKEY hSubKey = ((void*)0);
    DWORD cbData, dwType;

    if (lpSubKey)
    {
        lResult = RegOpenKey(hKey, lpSubKey, &hSubKey);
        if (lResult != ERROR_SUCCESS)
            goto done;
        hKey = hSubKey;
    }

    cbData = (dwBufferLen - 1) * sizeof(*pszBuffer);
    lResult = RegQueryValueEx(hKey, lpValueName, ((void*)0), &dwType, (LPBYTE) pszBuffer, &cbData);
    if (lResult != ERROR_SUCCESS)
        goto done;
    if (dwType != REG_SZ)
    {
        lResult = -1;
        goto done;
    }

    pszBuffer[cbData / sizeof(*pszBuffer)] = _T('\0');

done:
    if (lResult != ERROR_SUCCESS)
        pszBuffer[0] = _T('\0');
    if (hSubKey)
        RegCloseKey(hSubKey);
    return lResult;
}
