#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {scalar_t__ dwId; int /*<<< orphan*/  pszName; struct TYPE_6__* pNext; } ;
typedef  TYPE_1__ LOCALE_LIST_NODE ;
typedef  TYPE_1__ LAYOUT_LIST_NODE ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  IDC_INPUT_LANG_COMBO ; 
 int /*<<< orphan*/  IDC_KEYBOARD_LO_COMBO ; 
 TYPE_1__* FUNC6 () ; 
 TYPE_1__* FUNC7 () ; 

__attribute__((used)) static VOID
FUNC8(HWND hwndDlg)
{
    HWND hwndLocaleCombo = FUNC4(hwndDlg, IDC_INPUT_LANG_COMBO);
    HWND hwndLayoutCombo = FUNC4(hwndDlg, IDC_KEYBOARD_LO_COMBO);
    LOCALE_LIST_NODE *pCurrentLocale;
    LAYOUT_LIST_NODE *pCurrentLayout;
    DWORD dwDefaultLocaleId;
    DWORD dwDefaultLayoutId;
    INT iItemIndex;

    dwDefaultLocaleId = FUNC5();

    for (pCurrentLocale = FUNC7();
         pCurrentLocale != NULL;
         pCurrentLocale = pCurrentLocale->pNext)
    {
        iItemIndex = FUNC0(hwndLocaleCombo, pCurrentLocale->pszName);
        FUNC2(hwndLocaleCombo, iItemIndex, pCurrentLocale);

        if (pCurrentLocale->dwId == dwDefaultLocaleId)
        {
            FUNC1(hwndLocaleCombo, iItemIndex);
        }
    }

    dwDefaultLayoutId = FUNC3(dwDefaultLocaleId);

    for (pCurrentLayout = FUNC6();
         pCurrentLayout != NULL;
         pCurrentLayout = pCurrentLayout->pNext)
    {
        iItemIndex = FUNC0(hwndLayoutCombo, pCurrentLayout->pszName);
        FUNC2(hwndLayoutCombo, iItemIndex, pCurrentLayout);

        if (pCurrentLayout->dwId == dwDefaultLayoutId)
        {
            FUNC1(hwndLayoutCombo, iItemIndex);
        }
    }

    if (dwDefaultLayoutId == 0)
        FUNC1(hwndLayoutCombo, 0);
}