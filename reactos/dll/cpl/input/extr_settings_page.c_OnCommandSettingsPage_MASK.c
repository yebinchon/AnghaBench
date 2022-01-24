#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {scalar_t__ lParam; void* iItem; void* mask; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ LVITEM ;
typedef  int /*<<< orphan*/  INPUT_LIST_NODE ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/  AddDialogProc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EditDialogProc ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
#define  IDC_ADD_BUTTON 132 
 int /*<<< orphan*/  IDC_KEYLAYOUT_LIST ; 
#define  IDC_KEY_SET_BTN 131 
#define  IDC_PROP_BUTTON 130 
#define  IDC_REMOVE_BUTTON 129 
#define  IDC_SET_DEFAULT 128 
 int /*<<< orphan*/  IDD_ADD ; 
 int /*<<< orphan*/  IDD_INPUT_LANG_PROP ; 
 int /*<<< orphan*/  IDD_KEYSETTINGS ; 
 int /*<<< orphan*/  IDOK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KeySettingsDialogProc ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 void* LVIF_PARAM ; 
 int /*<<< orphan*/  LVNI_SELECTED ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hApplet ; 

VOID
FUNC12(HWND hwndDlg, WPARAM wParam)
{
    switch (FUNC6(wParam))
    {
        case IDC_ADD_BUTTON:
        {
            if (FUNC1(hApplet,
                           FUNC9(IDD_ADD),
                           hwndDlg,
                           AddDialogProc) == IDOK)
            {
                FUNC11(FUNC2(hwndDlg, IDC_KEYLAYOUT_LIST));
                FUNC10(FUNC3(hwndDlg), hwndDlg);
            }
        }
        break;

        case IDC_REMOVE_BUTTON:
        {
            HWND hwndList;
            
            hwndList = FUNC2(hwndDlg, IDC_KEYLAYOUT_LIST);

            if (hwndList != NULL)
            {
                LVITEM item = { 0 };

                item.mask = LVIF_PARAM;
                item.iItem = FUNC8(hwndList, -1, LVNI_SELECTED);

                if (FUNC7(hwndList, &item) != FALSE)
                {
                    FUNC4((INPUT_LIST_NODE*) item.lParam);
                    FUNC11(hwndList);
                    FUNC10(FUNC3(hwndDlg), hwndDlg);
                }
            }
        }
        break;

        case IDC_PROP_BUTTON:
        {
            HWND hwndList;
            
            hwndList = FUNC2(hwndDlg, IDC_KEYLAYOUT_LIST);

            if (hwndList != NULL)
            {
                LVITEM item = { 0 };

                item.mask = LVIF_PARAM;
                item.iItem = FUNC8(hwndList, -1, LVNI_SELECTED);

                if (FUNC7(hwndList, &item) != FALSE)
                {
                    if (FUNC0(hApplet,
                                        FUNC9(IDD_INPUT_LANG_PROP),
                                        hwndDlg,
                                        EditDialogProc,
                                        item.lParam) == IDOK)
                    {
                        FUNC11(hwndList);
                        FUNC10(FUNC3(hwndDlg), hwndDlg);
                    }
                }
            }
        }
        break;

        case IDC_SET_DEFAULT:
        {
            HWND hwndList;
            
            hwndList = FUNC2(hwndDlg, IDC_KEYLAYOUT_LIST);

            if (hwndList != NULL)
            {
                LVITEM item = { 0 };

                item.mask = LVIF_PARAM;
                item.iItem = FUNC8(hwndList, -1, LVNI_SELECTED);

                if (FUNC7(hwndList, &item) != FALSE)
                {
                    FUNC5((INPUT_LIST_NODE*) item.lParam);
                    FUNC11(hwndList);
                    FUNC10(FUNC3(hwndDlg), hwndDlg);
                }
            }
        }
        break;

        case IDC_KEY_SET_BTN:
        {
            FUNC1(hApplet,
                       FUNC9(IDD_KEYSETTINGS),
                       hwndDlg,
                       KeySettingsDialogProc);
        }
        break;
    }
}