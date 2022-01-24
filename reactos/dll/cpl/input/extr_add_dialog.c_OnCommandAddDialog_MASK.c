#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {int /*<<< orphan*/  dwId; } ;
struct TYPE_5__ {int /*<<< orphan*/  dwId; } ;
typedef  TYPE_1__ LOCALE_LIST_NODE ;
typedef  TYPE_2__ LAYOUT_LIST_NODE ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CBN_SELCHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  IDCANCEL 130 
#define  IDC_INPUT_LANG_COMBO 129 
 int const IDC_KEYBOARD_LO_COMBO ; 
#define  IDOK 128 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC10(HWND hwndDlg, WPARAM wParam)
{
    switch (FUNC9(wParam))
    {
        case IDOK:
        {
            HWND hwndLocaleCombo = FUNC6(hwndDlg, IDC_INPUT_LANG_COMBO);
            HWND hwndLayoutCombo = FUNC6(hwndDlg, IDC_KEYBOARD_LO_COMBO);
            LOCALE_LIST_NODE *pCurrentLocale;
            LAYOUT_LIST_NODE *pCurrentLayout;

            pCurrentLocale = (LOCALE_LIST_NODE*)FUNC2(hwndLocaleCombo,
                                                                     FUNC1(hwndLocaleCombo));
            pCurrentLayout = (LAYOUT_LIST_NODE*)FUNC2(hwndLayoutCombo,
                                                                     FUNC1(hwndLayoutCombo));

            FUNC8(pCurrentLocale, pCurrentLayout);

            FUNC4(hwndDlg, FUNC9(wParam));
        }
        break;

        case IDCANCEL:
        {
            FUNC4(hwndDlg, FUNC9(wParam));
        }
        break;

        case IDC_INPUT_LANG_COMBO:
        {
            if (FUNC7(wParam) == CBN_SELCHANGE)
            {
                HWND hwndLocaleCombo = FUNC6(hwndDlg, IDC_INPUT_LANG_COMBO);
                HWND hwndLayoutCombo = FUNC6(hwndDlg, IDC_KEYBOARD_LO_COMBO);
                LOCALE_LIST_NODE *pCurrentLocale;

                pCurrentLocale = (LOCALE_LIST_NODE*)FUNC2(hwndLocaleCombo,
                                                                         FUNC1(hwndLocaleCombo));
                if (pCurrentLocale != NULL)
                {
                    DWORD dwLayoutId;
                    INT iIndex;
                    INT iCount;

                    dwLayoutId = FUNC5(pCurrentLocale->dwId);

                    iCount = FUNC0(hwndLayoutCombo);

                    for (iIndex = 0; iIndex < iCount; iIndex++)
                    {
                        LAYOUT_LIST_NODE *pCurrentLayout;

                        pCurrentLayout = (LAYOUT_LIST_NODE*)FUNC2(hwndLayoutCombo, iIndex);

                        if (pCurrentLayout != NULL && pCurrentLayout->dwId == dwLayoutId)
                        {
                            FUNC3(hwndLayoutCombo, iIndex);
                            break;
                        }
                    }
                }
            }
        }
        break;
    }
}