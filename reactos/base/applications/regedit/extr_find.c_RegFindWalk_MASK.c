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
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/ ***************** LPWSTR ;
typedef  scalar_t__* LPCWSTR ;
typedef  scalar_t__ LONG ;
typedef  scalar_t__ HKEY ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *****************,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 scalar_t__ HKEY_CLASSES_ROOT ; 
 scalar_t__ HKEY_CURRENT_CONFIG ; 
 scalar_t__ HKEY_CURRENT_USER ; 
 scalar_t__ HKEY_LOCAL_MACHINE ; 
 scalar_t__ HKEY_USERS ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int MAX_PATH ; 
 int RSF_LOOKATKEYS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ******************,int /*<<< orphan*/ ******************) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ******************,int) ; 
 int /*<<< orphan*/ ************************* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *****************,scalar_t__*) ; 
 int /*<<< orphan*/  compare ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ******************) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ *****************,int) ; 
 int /*<<< orphan*/ ************************* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ******************,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ***************** s_backslash ; 
 int s_cbName ; 
 int s_dwFlags ; 
 int /*<<< orphan*/ ***************** s_empty ; 
 int /*<<< orphan*/  s_szFindWhat ; 
 int /*<<< orphan*/  s_szName ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *****************,int /*<<< orphan*/ *****************) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,scalar_t__*) ; 
 int FUNC16 (scalar_t__*) ; 
 int /*<<< orphan*/ ************************* FUNC17 (scalar_t__*,int) ; 

BOOL FUNC18(
    HKEY *  phKey,
    LPCWSTR pszSubKey,
    LPCWSTR pszValueName,
    LPWSTR *ppszFoundSubKey,
    LPWSTR *ppszFoundValueName)
{
    LONG lResult;
    DWORD i, c;
    HKEY hBaseKey, hSubKey;
    WCHAR szKeyName[MAX_PATH];
    WCHAR szSubKey[MAX_PATH];
    LPWSTR pch;
    BOOL fPast;
    LPWSTR *ppszNames = NULL;

    hBaseKey = *phKey;
    if (FUNC4(hBaseKey, pszSubKey, pszValueName, ppszFoundSubKey,
                       ppszFoundValueName))
        return TRUE;

    if (FUNC16(pszSubKey) >= MAX_PATH)
        return FALSE;

    FUNC15(szSubKey, pszSubKey);
    while(szSubKey[0] != 0)
    {
        if (FUNC1())
            return FALSE;

        pch = FUNC17(szSubKey, L'\\');
        if (pch == NULL)
        {
            FUNC15(szKeyName, szSubKey);
            szSubKey[0] = 0;
            hSubKey = hBaseKey;
        }
        else
        {
            FUNC11(szKeyName, pch + 1, MAX_PATH);
            *pch = 0;
            lResult = FUNC5(hBaseKey, szSubKey, 0, KEY_ALL_ACCESS,
                                   &hSubKey);
            if (lResult != ERROR_SUCCESS)
                return FALSE;
        }

        lResult = FUNC6(hSubKey, NULL, NULL, NULL, &c, NULL, NULL,
                                  NULL, NULL, NULL, NULL, NULL);
        if (lResult != ERROR_SUCCESS)
            goto err;

        ppszNames = (LPWSTR *) FUNC12(c * sizeof(LPWSTR));
        if (ppszNames == NULL)
            goto err;
        FUNC7(ppszNames, c * sizeof(LPWSTR));

        for(i = 0; i < c; i++)
        {
            if (FUNC1())
                goto err;

            s_cbName = MAX_PATH * sizeof(WCHAR);
            lResult = FUNC3(hSubKey, i, s_szName, &s_cbName,
                                    NULL, NULL, NULL, NULL);
            if (lResult == ERROR_NO_MORE_ITEMS)
            {
                c = i;
                break;
            }
            if (lResult != ERROR_SUCCESS)
                break;
            ppszNames[i] = FUNC8(s_szName);
        }

        FUNC13(ppszNames, c, sizeof(LPWSTR), compare);

        fPast = FALSE;
        for(i = 0; i < c; i++)
        {
            if (FUNC1())
                goto err;

            if (!fPast && FUNC9(ppszNames[i], szKeyName) == 0)
            {
                fPast = TRUE;
                continue;
            }
            if (!fPast)
                continue;

            if ((s_dwFlags & RSF_LOOKATKEYS) &&
                    FUNC0(ppszNames[i], s_szFindWhat))
            {
                *ppszFoundSubKey = FUNC12(
                                       (FUNC16(szSubKey) + FUNC16(ppszNames[i]) + 2) *
                                       sizeof(WCHAR));
                if (*ppszFoundSubKey == NULL)
                    goto err;
                if (szSubKey[0])
                {
                    FUNC15(*ppszFoundSubKey, szSubKey);
                    FUNC14(*ppszFoundSubKey, s_backslash);
                }
                else
                    **ppszFoundSubKey = 0;
                FUNC14(*ppszFoundSubKey, ppszNames[i]);
                *ppszFoundValueName = NULL;
                goto success;
            }

            if (FUNC4(hSubKey, ppszNames[i], NULL,
                               ppszFoundSubKey, ppszFoundValueName))
            {
                LPWSTR psz = *ppszFoundSubKey;
                *ppszFoundSubKey = FUNC12(
                                       (FUNC16(szSubKey) + FUNC16(psz) + 2) *
                                       sizeof(WCHAR));
                if (*ppszFoundSubKey == NULL)
                    goto err;
                if (szSubKey[0])
                {
                    FUNC15(*ppszFoundSubKey, szSubKey);
                    FUNC14(*ppszFoundSubKey, s_backslash);
                }
                else
                    **ppszFoundSubKey = 0;
                FUNC14(*ppszFoundSubKey, psz);
                FUNC10(&psz);
                goto success;
            }
        }
        if (ppszNames != NULL)
        {
            for(i = 0; i < c; i++)
                FUNC10(&ppszNames[i]);
            FUNC10(ppszNames);
        }
        ppszNames = NULL;

        if (hBaseKey != hSubKey)
            FUNC2(hSubKey);
    }

    if (*phKey == HKEY_CLASSES_ROOT)
    {
        *phKey = HKEY_CURRENT_USER;
        if (FUNC4(*phKey, s_empty, NULL, ppszFoundSubKey,
                           ppszFoundValueName))
            return TRUE;
    }

    if (*phKey == HKEY_CURRENT_USER)
    {
        *phKey = HKEY_LOCAL_MACHINE;
        if (FUNC4(*phKey, s_empty, NULL, ppszFoundSubKey,
                           ppszFoundValueName))
            goto success;
    }

    if (*phKey == HKEY_LOCAL_MACHINE)
    {
        *phKey = HKEY_USERS;
        if (FUNC4(*phKey, s_empty, NULL, ppszFoundSubKey,
                           ppszFoundValueName))
            goto success;
    }

    if (*phKey == HKEY_USERS)
    {
        *phKey = HKEY_CURRENT_CONFIG;
        if (FUNC4(*phKey, s_empty, NULL, ppszFoundSubKey,
                           ppszFoundValueName))
            goto success;
    }

err:
    if (ppszNames != NULL)
    {
        for(i = 0; i < c; i++)
            FUNC10(&ppszNames[i]);
        FUNC10(ppszNames);
    }
    if (hBaseKey != hSubKey)
        FUNC2(hSubKey);
    return FALSE;

success:
    if (ppszNames != NULL)
    {
        for(i = 0; i < c; i++)
            FUNC10(&ppszNames[i]);
        FUNC10(ppszNames);
    }
    if (hBaseKey != hSubKey)
        FUNC2(hSubKey);
    return TRUE;
}