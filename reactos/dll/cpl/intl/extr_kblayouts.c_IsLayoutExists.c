
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szTmp ;
typedef int szPreload ;
typedef int szLayoutNum ;
typedef char WCHAR ;
typedef int PWSTR ;
typedef int LPBYTE ;
typedef scalar_t__ LANGID ;
typedef int HKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CCH_LAYOUT_ID ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int GetLocaleInfoW (scalar_t__,int ,char*,int) ;
 int HKEY_CURRENT_USER ;
 int KEY_QUERY_VALUE ;
 int LOCALE_ILANGUAGE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumValueW (int ,int,char*,int*,int *,int*,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int *,int ,int*) ;
 scalar_t__ TRUE ;
 scalar_t__ wcscmp (char*,int ) ;
 scalar_t__ wcstoul (char*,int *,int) ;
 int wsprintf (char*,char*,char*) ;

__attribute__((used)) static BOOL
IsLayoutExists(PWSTR szLayoutID, PWSTR szLangID)
{
    HKEY hKey, hSubKey;
    WCHAR szPreload[CCH_LAYOUT_ID + 1], szLayoutNum[3 + 1],
          szTmp[CCH_LAYOUT_ID + 1], szOldLangID[CCH_LAYOUT_ID + 1];
    DWORD dwIndex = 0, dwType, dwSize;
    BOOL IsLangExists = FALSE;
    LANGID langid;

    if (RegOpenKeyExW(HKEY_CURRENT_USER, L"Keyboard Layout\\Preload",
        0, KEY_QUERY_VALUE, &hKey) == ERROR_SUCCESS)
    {
        dwSize = sizeof(szLayoutNum);

        while (RegEnumValueW(hKey, dwIndex, szLayoutNum, &dwSize, ((void*)0), &dwType, ((void*)0), ((void*)0)) == ERROR_SUCCESS)
        {
            dwSize = sizeof(szPreload);
            if (RegQueryValueExW(hKey, szLayoutNum, ((void*)0), ((void*)0), (LPBYTE)szPreload, &dwSize) != ERROR_SUCCESS)
            {
                RegCloseKey(hKey);
                return FALSE;
            }

            langid = (LANGID)wcstoul(szPreload, ((void*)0), 16);
            GetLocaleInfoW(langid, LOCALE_ILANGUAGE, szTmp, sizeof(szTmp) / sizeof(WCHAR));
            wsprintf(szOldLangID, L"0000%s", szTmp);

            if (wcscmp(szOldLangID, szLangID) == 0)
                IsLangExists = TRUE;
            else
                IsLangExists = FALSE;

            if (szPreload[0] == 'd')
            {
                if (RegOpenKeyExW(HKEY_CURRENT_USER, L"Keyboard Layout\\Substitutes",
                                 0, KEY_QUERY_VALUE, &hSubKey) == ERROR_SUCCESS)
                {
                    dwSize = sizeof(szTmp);
                    RegQueryValueExW(hSubKey, szPreload, ((void*)0), ((void*)0), (LPBYTE)szTmp, &dwSize);

                    if ((wcscmp(szTmp, szLayoutID) == 0)&&(IsLangExists))
                    {
                        RegCloseKey(hSubKey);
                        RegCloseKey(hKey);
                        return TRUE;
                    }
                }
            }
            else
            {
                if ((wcscmp(szPreload, szLayoutID) == 0) && (IsLangExists))
                {
                    RegCloseKey(hKey);
                    return TRUE;
                }
            }

            IsLangExists = FALSE;
            dwSize = sizeof(szLayoutNum);
            dwIndex++;
        }

        RegCloseKey(hKey);
    }

    return FALSE;
}
