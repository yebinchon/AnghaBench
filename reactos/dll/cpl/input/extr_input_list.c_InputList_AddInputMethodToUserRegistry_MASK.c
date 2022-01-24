#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_7__ {int wFlags; int /*<<< orphan*/  hkl; TYPE_2__* pLayout; TYPE_1__* pLocale; } ;
struct TYPE_6__ {int /*<<< orphan*/  dwId; } ;
struct TYPE_5__ {int /*<<< orphan*/  dwId; } ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  TYPE_3__ INPUT_LIST_NODE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int INPUT_LIST_NODE_FLAG_ADDED ; 
 int INPUT_LIST_NODE_FLAG_EDITED ; 
 int /*<<< orphan*/  KEY_SET_VALUE ; 
 int KLF_NOTELLSHELL ; 
 int KLF_SUBSTITUTE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static VOID
FUNC8(DWORD dwIndex, INPUT_LIST_NODE *pNode)
{
    WCHAR szMethodIndex[MAX_PATH];
    WCHAR szPreload[MAX_PATH];
    BOOL bIsImeMethod = FALSE;
    HKEY hKey;

    FUNC6(szMethodIndex, FUNC0(szMethodIndex), L"%lu", dwIndex);

    /* Check is IME method */
    if ((FUNC1(pNode->pLayout->dwId) & 0xF000) == 0xE000)
    {
        FUNC6(szPreload, FUNC0(szPreload), L"%08X", pNode->pLayout->dwId);
        bIsImeMethod = TRUE;
    }
    else
    {
        FUNC6(szPreload, FUNC0(szPreload), L"%08X", pNode->pLocale->dwId);
    }

    if (FUNC4(HKEY_CURRENT_USER,
                      L"Keyboard Layout\\Preload",
                      0,
                      KEY_SET_VALUE,
                      &hKey) == ERROR_SUCCESS)
    {
        FUNC5(hKey,
                       szMethodIndex,
                       0,
                       REG_SZ,
                       (LPBYTE)szPreload,
                       (FUNC7(szPreload) + 1) * sizeof(WCHAR));

        FUNC3(hKey);
    }

    if (pNode->pLocale->dwId != pNode->pLayout->dwId && bIsImeMethod == FALSE)
    {
        if (FUNC4(HKEY_CURRENT_USER,
                          L"Keyboard Layout\\Substitutes",
                          0,
                          KEY_SET_VALUE,
                          &hKey) == ERROR_SUCCESS)
        {
            WCHAR szSubstitutes[MAX_PATH];

            FUNC6(szSubstitutes, FUNC0(szSubstitutes), L"%08X", pNode->pLayout->dwId);

            FUNC5(hKey,
                           szPreload,
                           0,
                           REG_SZ,
                           (LPBYTE)szSubstitutes,
                           (FUNC7(szSubstitutes) + 1) * sizeof(WCHAR));

            FUNC3(hKey);
        }
    }

    if ((pNode->wFlags & INPUT_LIST_NODE_FLAG_ADDED) ||
        (pNode->wFlags & INPUT_LIST_NODE_FLAG_EDITED))
    {
        pNode->hkl = FUNC2(szPreload, KLF_SUBSTITUTE_OK | KLF_NOTELLSHELL);
    }
}