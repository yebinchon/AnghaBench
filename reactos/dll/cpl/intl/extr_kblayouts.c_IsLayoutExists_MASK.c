#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  szTmp ;
typedef  int /*<<< orphan*/  szPreload ;
typedef  int /*<<< orphan*/  szLayoutNum ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LANGID ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CCH_LAYOUT_ID ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  LOCALE_ILANGUAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,char*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 

__attribute__((used)) static BOOL
FUNC8(PWSTR szLayoutID, PWSTR szLangID)
{
    HKEY hKey, hSubKey;
    WCHAR szPreload[CCH_LAYOUT_ID + 1], szLayoutNum[3 + 1],
          szTmp[CCH_LAYOUT_ID + 1], szOldLangID[CCH_LAYOUT_ID + 1];
    DWORD dwIndex = 0, dwType, dwSize;
    BOOL IsLangExists = FALSE;
    LANGID langid;

    if (FUNC3(HKEY_CURRENT_USER, L"Keyboard Layout\\Preload",
        0, KEY_QUERY_VALUE, &hKey) == ERROR_SUCCESS)
    {
        dwSize = sizeof(szLayoutNum);

        while (FUNC2(hKey, dwIndex, szLayoutNum, &dwSize, NULL, &dwType, NULL, NULL) == ERROR_SUCCESS)
        {
            dwSize = sizeof(szPreload);
            if (FUNC4(hKey, szLayoutNum, NULL, NULL, (LPBYTE)szPreload, &dwSize) != ERROR_SUCCESS)
            {
                FUNC1(hKey);
                return FALSE;
            }

            langid = (LANGID)FUNC6(szPreload, NULL, 16);
            FUNC0(langid, LOCALE_ILANGUAGE, szTmp, sizeof(szTmp) / sizeof(WCHAR));
            FUNC7(szOldLangID, L"0000%s", szTmp);

            if (FUNC5(szOldLangID, szLangID) == 0)
                IsLangExists = TRUE;
            else
                IsLangExists = FALSE;

            if (szPreload[0] == 'd')
            {
                if (FUNC3(HKEY_CURRENT_USER, L"Keyboard Layout\\Substitutes",
                                 0, KEY_QUERY_VALUE, &hSubKey) == ERROR_SUCCESS)
                {
                    dwSize = sizeof(szTmp);
                    FUNC4(hSubKey, szPreload, NULL, NULL, (LPBYTE)szTmp, &dwSize);

                    if ((FUNC5(szTmp, szLayoutID) == 0)&&(IsLangExists))
                    {
                        FUNC1(hSubKey);
                        FUNC1(hKey);
                        return TRUE;
                    }
                }
            }
            else
            {
                if ((FUNC5(szPreload, szLayoutID) == 0) && (IsLangExists))
                {
                    FUNC1(hKey);
                    return TRUE;
                }
            }

            IsLangExists = FALSE;
            dwSize = sizeof(szLayoutNum);
            dwIndex++;
        }

        FUNC1(hKey);
    }

    return FALSE;
}