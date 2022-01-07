
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_6__ {int dwId; } ;
struct TYPE_5__ {int dwId; } ;
typedef TYPE_1__ LOCALE_LIST_NODE ;
typedef TYPE_2__ LAYOUT_LIST_NODE ;
typedef int INT ;
typedef int HWND ;
typedef int DWORD ;


 int CBN_SELCHANGE ;
 int ComboBox_GetCount (int ) ;
 int ComboBox_GetCurSel (int ) ;
 scalar_t__ ComboBox_GetItemData (int ,int ) ;
 int ComboBox_SetCurSel (int ,int ) ;
 int EndDialog (int ,int) ;
 int GetDefaultLayoutForLocale (int ) ;
 int GetDlgItem (int ,int const) ;
 int HIWORD (int ) ;


 int const IDC_KEYBOARD_LO_COMBO ;

 int InputList_Add (TYPE_1__*,TYPE_2__*) ;
 int LOWORD (int ) ;

__attribute__((used)) static VOID
OnCommandAddDialog(HWND hwndDlg, WPARAM wParam)
{
    switch (LOWORD(wParam))
    {
        case 128:
        {
            HWND hwndLocaleCombo = GetDlgItem(hwndDlg, 129);
            HWND hwndLayoutCombo = GetDlgItem(hwndDlg, IDC_KEYBOARD_LO_COMBO);
            LOCALE_LIST_NODE *pCurrentLocale;
            LAYOUT_LIST_NODE *pCurrentLayout;

            pCurrentLocale = (LOCALE_LIST_NODE*)ComboBox_GetItemData(hwndLocaleCombo,
                                                                     ComboBox_GetCurSel(hwndLocaleCombo));
            pCurrentLayout = (LAYOUT_LIST_NODE*)ComboBox_GetItemData(hwndLayoutCombo,
                                                                     ComboBox_GetCurSel(hwndLayoutCombo));

            InputList_Add(pCurrentLocale, pCurrentLayout);

            EndDialog(hwndDlg, LOWORD(wParam));
        }
        break;

        case 130:
        {
            EndDialog(hwndDlg, LOWORD(wParam));
        }
        break;

        case 129:
        {
            if (HIWORD(wParam) == CBN_SELCHANGE)
            {
                HWND hwndLocaleCombo = GetDlgItem(hwndDlg, 129);
                HWND hwndLayoutCombo = GetDlgItem(hwndDlg, IDC_KEYBOARD_LO_COMBO);
                LOCALE_LIST_NODE *pCurrentLocale;

                pCurrentLocale = (LOCALE_LIST_NODE*)ComboBox_GetItemData(hwndLocaleCombo,
                                                                         ComboBox_GetCurSel(hwndLocaleCombo));
                if (pCurrentLocale != ((void*)0))
                {
                    DWORD dwLayoutId;
                    INT iIndex;
                    INT iCount;

                    dwLayoutId = GetDefaultLayoutForLocale(pCurrentLocale->dwId);

                    iCount = ComboBox_GetCount(hwndLayoutCombo);

                    for (iIndex = 0; iIndex < iCount; iIndex++)
                    {
                        LAYOUT_LIST_NODE *pCurrentLayout;

                        pCurrentLayout = (LAYOUT_LIST_NODE*)ComboBox_GetItemData(hwndLayoutCombo, iIndex);

                        if (pCurrentLayout != ((void*)0) && pCurrentLayout->dwId == dwLayoutId)
                        {
                            ComboBox_SetCurSel(hwndLayoutCombo, iIndex);
                            break;
                        }
                    }
                }
            }
        }
        break;
    }
}
