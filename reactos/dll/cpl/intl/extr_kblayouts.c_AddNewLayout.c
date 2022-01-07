
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ PWSTR ;
typedef int Lang ;
typedef int LPBYTE ;
typedef int LCID ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int CCH_LAYOUT_ID ;
 int CCH_ULONG_DEC ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetLayoutCount (int*) ;
 int GetLocaleInfoW (int ,int ,int*,int) ;
 int HKEY_CURRENT_USER ;
 scalar_t__ IsLayoutExists (scalar_t__,int*) ;
 int KEY_ALL_ACCESS ;
 int LOCALE_ILANGUAGE ;
 int MAKELCID (int ,int ) ;
 int MAX_PATH ;
 int REG_OPTION_NON_VOLATILE ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,char*,int ,int *,int ,int ,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKey (int ,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ RegSetValueExW (int ,int*,int ,int ,int ,int ) ;
 int SORT_DEFAULT ;
 int TRUE ;
 int _ultow (int ,int*,int) ;
 int lstrcpy (scalar_t__,int*) ;
 scalar_t__ wcscmp (int*,scalar_t__) ;
 scalar_t__ wcslen (int*) ;
 int wcstoul (scalar_t__,int *,int) ;
 int wsprintf (int*,char*,...) ;

__attribute__((used)) static BOOL
AddNewLayout(PWSTR szLayoutID, PWSTR szLangID)
{
    WCHAR NewLayout[CCH_ULONG_DEC + 1], Lang[MAX_PATH],
          LangID[CCH_LAYOUT_ID + 1], SubPath[CCH_LAYOUT_ID + 1];
    HKEY hKey, hSubKey;
    DWORD cValues;
    LCID lcid;

    if (RegOpenKeyExW(HKEY_CURRENT_USER, L"Keyboard Layout\\Preload", 0, KEY_ALL_ACCESS, &hKey) == ERROR_SUCCESS)
    {
        if (RegQueryInfoKey(hKey, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &cValues, ((void*)0), ((void*)0), ((void*)0), ((void*)0)) == ERROR_SUCCESS)
        {
            _ultow(cValues + 1, NewLayout, 10);

            lcid = wcstoul(szLangID, ((void*)0), 16);

            GetLocaleInfoW(MAKELCID(lcid, SORT_DEFAULT), LOCALE_ILANGUAGE, Lang, sizeof(Lang) / sizeof(WCHAR));
            wsprintf(LangID, L"0000%s", Lang);

            if (IsLayoutExists(szLayoutID, LangID))
            {
                RegCloseKey(hKey);
                return FALSE;
            }

            if (GetLayoutCount(Lang) >= 1)
            {
                wsprintf(SubPath, L"d%03d%s", GetLayoutCount(Lang), Lang);
            }
            else if ((wcscmp(LangID, szLayoutID) != 0) && (GetLayoutCount(Lang) == 0))
            {
                wsprintf(SubPath, L"d%03d%s", 0, Lang);
            }
            else SubPath[0] = L'\0';

            if (wcslen(SubPath) != 0)
            {
                if (RegCreateKeyExW(HKEY_CURRENT_USER, L"Keyboard Layout\\Substitutes", 0, ((void*)0),
                                    REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS,
                                    ((void*)0), &hSubKey, ((void*)0)) == ERROR_SUCCESS)
                {
                    if (RegSetValueExW(hSubKey, SubPath, 0, REG_SZ, (LPBYTE)szLayoutID,
                                       (DWORD)((CCH_LAYOUT_ID + 1) * sizeof(WCHAR))) != ERROR_SUCCESS)
                    {
                        RegCloseKey(hSubKey);
                        RegCloseKey(hKey);
                        return FALSE;
                    }
                    RegCloseKey(hSubKey);
                }
                lstrcpy(szLayoutID, SubPath);
            }

            RegSetValueExW(hKey,
                           NewLayout,
                           0,
                           REG_SZ,
                           (LPBYTE)szLayoutID,
                           (DWORD)((CCH_LAYOUT_ID + 1) * sizeof(WCHAR)));
        }
        RegCloseKey(hKey);
    }

    return TRUE;
}
