
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int ***************** LPWSTR ;
typedef scalar_t__* LPCWSTR ;
typedef scalar_t__ LONG ;
typedef scalar_t__ HKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CompareName (int *****************,int ) ;
 scalar_t__ DoEvents () ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 scalar_t__ HKEY_CLASSES_ROOT ;
 scalar_t__ HKEY_CURRENT_CONFIG ;
 scalar_t__ HKEY_CURRENT_USER ;
 scalar_t__ HKEY_LOCAL_MACHINE ;
 scalar_t__ HKEY_USERS ;
 int KEY_ALL_ACCESS ;
 int MAX_PATH ;
 int RSF_LOOKATKEYS ;
 int RegCloseKey (scalar_t__) ;
 scalar_t__ RegEnumKeyExW (scalar_t__,int,int ,int*,int *,int *,int *,int *) ;
 scalar_t__ RegFindRecurse (scalar_t__,scalar_t__*,scalar_t__*,int ******************,int ******************) ;
 scalar_t__ RegOpenKeyExW (scalar_t__,scalar_t__*,int ,int ,scalar_t__*) ;
 scalar_t__ RegQueryInfoKeyW (scalar_t__,int *,int *,int *,int*,int *,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ TRUE ;
 int ZeroMemory (int ******************,int) ;
 int ************************* _wcsdup (int ) ;
 scalar_t__ _wcsicmp (int *****************,scalar_t__*) ;
 int compare ;
 int free (int ******************) ;
 int lstrcpynW (scalar_t__*,int *****************,int) ;
 int ************************* malloc (int) ;
 int qsort (int ******************,int,int,int ) ;
 int ***************** s_backslash ;
 int s_cbName ;
 int s_dwFlags ;
 int ***************** s_empty ;
 int s_szFindWhat ;
 int s_szName ;
 int wcscat (int *****************,int *****************) ;
 int wcscpy (scalar_t__*,scalar_t__*) ;
 int wcslen (scalar_t__*) ;
 int ************************* wcsrchr (scalar_t__*,int) ;

BOOL RegFindWalk(
    HKEY * phKey,
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
    LPWSTR *ppszNames = ((void*)0);

    hBaseKey = *phKey;
    if (RegFindRecurse(hBaseKey, pszSubKey, pszValueName, ppszFoundSubKey,
                       ppszFoundValueName))
        return TRUE;

    if (wcslen(pszSubKey) >= MAX_PATH)
        return FALSE;

    wcscpy(szSubKey, pszSubKey);
    while(szSubKey[0] != 0)
    {
        if (DoEvents())
            return FALSE;

        pch = wcsrchr(szSubKey, L'\\');
        if (pch == ((void*)0))
        {
            wcscpy(szKeyName, szSubKey);
            szSubKey[0] = 0;
            hSubKey = hBaseKey;
        }
        else
        {
            lstrcpynW(szKeyName, pch + 1, MAX_PATH);
            *pch = 0;
            lResult = RegOpenKeyExW(hBaseKey, szSubKey, 0, KEY_ALL_ACCESS,
                                   &hSubKey);
            if (lResult != ERROR_SUCCESS)
                return FALSE;
        }

        lResult = RegQueryInfoKeyW(hSubKey, ((void*)0), ((void*)0), ((void*)0), &c, ((void*)0), ((void*)0),
                                  ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        if (lResult != ERROR_SUCCESS)
            goto err;

        ppszNames = (LPWSTR *) malloc(c * sizeof(LPWSTR));
        if (ppszNames == ((void*)0))
            goto err;
        ZeroMemory(ppszNames, c * sizeof(LPWSTR));

        for(i = 0; i < c; i++)
        {
            if (DoEvents())
                goto err;

            s_cbName = MAX_PATH * sizeof(WCHAR);
            lResult = RegEnumKeyExW(hSubKey, i, s_szName, &s_cbName,
                                    ((void*)0), ((void*)0), ((void*)0), ((void*)0));
            if (lResult == ERROR_NO_MORE_ITEMS)
            {
                c = i;
                break;
            }
            if (lResult != ERROR_SUCCESS)
                break;
            ppszNames[i] = _wcsdup(s_szName);
        }

        qsort(ppszNames, c, sizeof(LPWSTR), compare);

        fPast = FALSE;
        for(i = 0; i < c; i++)
        {
            if (DoEvents())
                goto err;

            if (!fPast && _wcsicmp(ppszNames[i], szKeyName) == 0)
            {
                fPast = TRUE;
                continue;
            }
            if (!fPast)
                continue;

            if ((s_dwFlags & RSF_LOOKATKEYS) &&
                    CompareName(ppszNames[i], s_szFindWhat))
            {
                *ppszFoundSubKey = malloc(
                                       (wcslen(szSubKey) + wcslen(ppszNames[i]) + 2) *
                                       sizeof(WCHAR));
                if (*ppszFoundSubKey == ((void*)0))
                    goto err;
                if (szSubKey[0])
                {
                    wcscpy(*ppszFoundSubKey, szSubKey);
                    wcscat(*ppszFoundSubKey, s_backslash);
                }
                else
                    **ppszFoundSubKey = 0;
                wcscat(*ppszFoundSubKey, ppszNames[i]);
                *ppszFoundValueName = ((void*)0);
                goto success;
            }

            if (RegFindRecurse(hSubKey, ppszNames[i], ((void*)0),
                               ppszFoundSubKey, ppszFoundValueName))
            {
                LPWSTR psz = *ppszFoundSubKey;
                *ppszFoundSubKey = malloc(
                                       (wcslen(szSubKey) + wcslen(psz) + 2) *
                                       sizeof(WCHAR));
                if (*ppszFoundSubKey == ((void*)0))
                    goto err;
                if (szSubKey[0])
                {
                    wcscpy(*ppszFoundSubKey, szSubKey);
                    wcscat(*ppszFoundSubKey, s_backslash);
                }
                else
                    **ppszFoundSubKey = 0;
                wcscat(*ppszFoundSubKey, psz);
                free(psz);
                goto success;
            }
        }
        if (ppszNames != ((void*)0))
        {
            for(i = 0; i < c; i++)
                free(ppszNames[i]);
            free(ppszNames);
        }
        ppszNames = ((void*)0);

        if (hBaseKey != hSubKey)
            RegCloseKey(hSubKey);
    }

    if (*phKey == HKEY_CLASSES_ROOT)
    {
        *phKey = HKEY_CURRENT_USER;
        if (RegFindRecurse(*phKey, s_empty, ((void*)0), ppszFoundSubKey,
                           ppszFoundValueName))
            return TRUE;
    }

    if (*phKey == HKEY_CURRENT_USER)
    {
        *phKey = HKEY_LOCAL_MACHINE;
        if (RegFindRecurse(*phKey, s_empty, ((void*)0), ppszFoundSubKey,
                           ppszFoundValueName))
            goto success;
    }

    if (*phKey == HKEY_LOCAL_MACHINE)
    {
        *phKey = HKEY_USERS;
        if (RegFindRecurse(*phKey, s_empty, ((void*)0), ppszFoundSubKey,
                           ppszFoundValueName))
            goto success;
    }

    if (*phKey == HKEY_USERS)
    {
        *phKey = HKEY_CURRENT_CONFIG;
        if (RegFindRecurse(*phKey, s_empty, ((void*)0), ppszFoundSubKey,
                           ppszFoundValueName))
            goto success;
    }

err:
    if (ppszNames != ((void*)0))
    {
        for(i = 0; i < c; i++)
            free(ppszNames[i]);
        free(ppszNames);
    }
    if (hBaseKey != hSubKey)
        RegCloseKey(hSubKey);
    return FALSE;

success:
    if (ppszNames != ((void*)0))
    {
        for(i = 0; i < c; i++)
            free(ppszNames[i]);
        free(ppszNames);
    }
    if (hBaseKey != hSubKey)
        RegCloseKey(hSubKey);
    return TRUE;
}
