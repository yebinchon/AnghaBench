
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szPreload ;
typedef int szLayoutID ;
typedef int WCHAR ;
typedef int UINT ;
typedef int PWSTR ;
typedef int LPBYTE ;
typedef int INT ;
typedef int HKEY ;
typedef int DWORD ;


 int CCH_LAYOUT_ID ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_QUERY_VALUE ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumValue (int ,int,int *,int*,int *,int*,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 int RegQueryValueExW (int ,int *,int *,int *,int ,int*) ;
 scalar_t__ wcscmp (int *,int ) ;
 int wcslen (int *) ;

__attribute__((used)) static INT
GetLayoutCount(PWSTR szLang)
{
    HKEY hKey;
    WCHAR szLayoutID[3 + 1], szPreload[CCH_LAYOUT_ID + 1], szLOLang[MAX_PATH];
    DWORD dwIndex = 0, dwType, dwSize;
    UINT Count = 0, i, j;

    if (RegOpenKeyExW(HKEY_CURRENT_USER, L"Keyboard Layout\\Preload",
        0, KEY_QUERY_VALUE, &hKey) == ERROR_SUCCESS)
    {
        dwSize = sizeof(szLayoutID);

        while (RegEnumValue(hKey, dwIndex, szLayoutID, &dwSize, ((void*)0), &dwType, ((void*)0), ((void*)0)) == ERROR_SUCCESS)
        {
            dwSize = sizeof(szPreload);
            RegQueryValueExW(hKey, szLayoutID, ((void*)0), ((void*)0), (LPBYTE)szPreload, &dwSize);

            for (i = 4, j = 0; i < wcslen(szPreload)+1; i++, j++)
                szLOLang[j] = szPreload[i];

            if (wcscmp(szLOLang, szLang) == 0) Count += 1;

            dwSize = sizeof(szLayoutID);
            dwIndex++;
        }

        RegCloseKey(hKey);
    }

    return Count;
}
