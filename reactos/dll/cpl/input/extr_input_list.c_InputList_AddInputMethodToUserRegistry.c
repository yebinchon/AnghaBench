
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_7__ {int wFlags; int hkl; TYPE_2__* pLayout; TYPE_1__* pLocale; } ;
struct TYPE_6__ {int dwId; } ;
struct TYPE_5__ {int dwId; } ;
typedef int LPBYTE ;
typedef TYPE_3__ INPUT_LIST_NODE ;
typedef int HKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ARRAYSIZE (int *) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int HIWORD (int ) ;
 int HKEY_CURRENT_USER ;
 int INPUT_LIST_NODE_FLAG_ADDED ;
 int INPUT_LIST_NODE_FLAG_EDITED ;
 int KEY_SET_VALUE ;
 int KLF_NOTELLSHELL ;
 int KLF_SUBSTITUTE_OK ;
 int LoadKeyboardLayoutW (int *,int) ;
 int MAX_PATH ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 int RegSetValueExW (int ,int *,int ,int ,int ,int) ;
 int StringCchPrintfW (int *,int ,char*,int ) ;
 scalar_t__ TRUE ;
 int wcslen (int *) ;

__attribute__((used)) static VOID
InputList_AddInputMethodToUserRegistry(DWORD dwIndex, INPUT_LIST_NODE *pNode)
{
    WCHAR szMethodIndex[MAX_PATH];
    WCHAR szPreload[MAX_PATH];
    BOOL bIsImeMethod = FALSE;
    HKEY hKey;

    StringCchPrintfW(szMethodIndex, ARRAYSIZE(szMethodIndex), L"%lu", dwIndex);


    if ((HIWORD(pNode->pLayout->dwId) & 0xF000) == 0xE000)
    {
        StringCchPrintfW(szPreload, ARRAYSIZE(szPreload), L"%08X", pNode->pLayout->dwId);
        bIsImeMethod = TRUE;
    }
    else
    {
        StringCchPrintfW(szPreload, ARRAYSIZE(szPreload), L"%08X", pNode->pLocale->dwId);
    }

    if (RegOpenKeyExW(HKEY_CURRENT_USER,
                      L"Keyboard Layout\\Preload",
                      0,
                      KEY_SET_VALUE,
                      &hKey) == ERROR_SUCCESS)
    {
        RegSetValueExW(hKey,
                       szMethodIndex,
                       0,
                       REG_SZ,
                       (LPBYTE)szPreload,
                       (wcslen(szPreload) + 1) * sizeof(WCHAR));

        RegCloseKey(hKey);
    }

    if (pNode->pLocale->dwId != pNode->pLayout->dwId && bIsImeMethod == FALSE)
    {
        if (RegOpenKeyExW(HKEY_CURRENT_USER,
                          L"Keyboard Layout\\Substitutes",
                          0,
                          KEY_SET_VALUE,
                          &hKey) == ERROR_SUCCESS)
        {
            WCHAR szSubstitutes[MAX_PATH];

            StringCchPrintfW(szSubstitutes, ARRAYSIZE(szSubstitutes), L"%08X", pNode->pLayout->dwId);

            RegSetValueExW(hKey,
                           szPreload,
                           0,
                           REG_SZ,
                           (LPBYTE)szSubstitutes,
                           (wcslen(szSubstitutes) + 1) * sizeof(WCHAR));

            RegCloseKey(hKey);
        }
    }

    if ((pNode->wFlags & INPUT_LIST_NODE_FLAG_ADDED) ||
        (pNode->wFlags & INPUT_LIST_NODE_FLAG_EDITED))
    {
        pNode->hkl = LoadKeyboardLayoutW(szPreload, KLF_SUBSTITUTE_OK | KLF_NOTELLSHELL);
    }
}
