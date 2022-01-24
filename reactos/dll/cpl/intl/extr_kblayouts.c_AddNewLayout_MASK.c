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
typedef  int WCHAR ;
typedef  scalar_t__ PWSTR ;
typedef  int /*<<< orphan*/  Lang ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  LCID ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CCH_LAYOUT_ID ; 
 int /*<<< orphan*/  CCH_ULONG_DEC ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 scalar_t__ FUNC2 (scalar_t__,int*) ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  LOCALE_ILANGUAGE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int*) ; 
 scalar_t__ FUNC11 (int*,scalar_t__) ; 
 scalar_t__ FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,char*,...) ; 

__attribute__((used)) static BOOL
FUNC15(PWSTR szLayoutID, PWSTR szLangID)
{
    WCHAR NewLayout[CCH_ULONG_DEC + 1], Lang[MAX_PATH],
          LangID[CCH_LAYOUT_ID + 1], SubPath[CCH_LAYOUT_ID + 1];
    HKEY hKey, hSubKey;
    DWORD cValues;
    LCID lcid;

    if (FUNC6(HKEY_CURRENT_USER, L"Keyboard Layout\\Preload", 0, KEY_ALL_ACCESS, &hKey) == ERROR_SUCCESS)
    {
        if (FUNC7(hKey, NULL, NULL, NULL, NULL, NULL, NULL, &cValues, NULL, NULL, NULL, NULL) == ERROR_SUCCESS)
        {
            FUNC9(cValues + 1, NewLayout, 10);

            lcid = FUNC13(szLangID, NULL, 16);

            FUNC1(FUNC3(lcid, SORT_DEFAULT), LOCALE_ILANGUAGE, Lang, sizeof(Lang) / sizeof(WCHAR));
            FUNC14(LangID, L"0000%s", Lang);

            if (FUNC2(szLayoutID, LangID))
            {
                FUNC4(hKey);
                return FALSE;
            }

            if (FUNC0(Lang) >= 1)
            {
                FUNC14(SubPath, L"d%03d%s", FUNC0(Lang), Lang);
            }
            else if ((FUNC11(LangID, szLayoutID) != 0) && (FUNC0(Lang) == 0))
            {
                FUNC14(SubPath, L"d%03d%s", 0, Lang);
            }
            else SubPath[0] = L'\0';

            if (FUNC12(SubPath) != 0)
            {
                if (FUNC5(HKEY_CURRENT_USER, L"Keyboard Layout\\Substitutes", 0, NULL,
                                    REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS,
                                    NULL, &hSubKey, NULL) == ERROR_SUCCESS)
                {
                    if (FUNC8(hSubKey, SubPath, 0, REG_SZ, (LPBYTE)szLayoutID,
                                       (DWORD)((CCH_LAYOUT_ID + 1) * sizeof(WCHAR))) != ERROR_SUCCESS)
                    {
                        FUNC4(hSubKey);
                        FUNC4(hKey);
                        return FALSE;
                    }
                    FUNC4(hSubKey);
                }
                FUNC10(szLayoutID, SubPath);
            }

            FUNC8(hKey,
                           NewLayout,
                           0,
                           REG_SZ,
                           (LPBYTE)szLayoutID,
                           (DWORD)((CCH_LAYOUT_ID + 1) * sizeof(WCHAR)));
        }
        FUNC4(hKey);
    }

    return TRUE;
}