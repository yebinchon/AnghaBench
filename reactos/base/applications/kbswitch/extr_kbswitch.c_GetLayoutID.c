
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szTempLCID ;
typedef int TCHAR ;
typedef int SIZE_T ;
typedef int * LPTSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CCH_LAYOUT_ID ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_CURRENT_USER ;
 int KEY_QUERY_VALUE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int *,int *,int *,int ,scalar_t__*) ;
 int StringCchCopy (int *,int ,int *) ;
 int TRUE ;
 int _T (char*) ;

__attribute__((used)) static BOOL
GetLayoutID(LPTSTR szLayoutNum, LPTSTR szLCID, SIZE_T LCIDLength)
{
    DWORD dwBufLen;
    DWORD dwRes;
    HKEY hKey;
    TCHAR szTempLCID[CCH_LAYOUT_ID + 1];


    if (RegOpenKeyEx(HKEY_CURRENT_USER, _T("Keyboard Layout\\Preload"), 0, KEY_QUERY_VALUE, &hKey) == ERROR_SUCCESS)
    {
        dwBufLen = sizeof(szTempLCID);
        dwRes = RegQueryValueEx(hKey, szLayoutNum, ((void*)0), ((void*)0), (LPBYTE)szTempLCID, &dwBufLen);

        if (dwRes != ERROR_SUCCESS)
        {
            RegCloseKey(hKey);
            return FALSE;
        }

        RegCloseKey(hKey);
    }


    if (RegOpenKeyEx(HKEY_CURRENT_USER, _T("Keyboard Layout\\Substitutes"), 0, KEY_QUERY_VALUE, &hKey) == ERROR_SUCCESS)
    {
        dwBufLen = sizeof(szTempLCID);

        if (RegQueryValueEx(hKey, szTempLCID, ((void*)0), ((void*)0), (LPBYTE)szLCID, &dwBufLen) != ERROR_SUCCESS)
        {

            StringCchCopy(szLCID, LCIDLength, szTempLCID);
        }

        RegCloseKey(hKey);
    }
    else
    {

        StringCchCopy(szLCID, LCIDLength, szTempLCID);
    }

    return TRUE;
}
