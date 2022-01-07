
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {scalar_t__ dwId; int pszName; struct TYPE_6__* pNext; } ;
typedef TYPE_1__ LOCALE_LIST_NODE ;
typedef TYPE_1__ LAYOUT_LIST_NODE ;
typedef int INT ;
typedef int HWND ;
typedef scalar_t__ DWORD ;


 int ComboBox_AddString (int ,int ) ;
 int ComboBox_SetCurSel (int ,int ) ;
 int ComboBox_SetItemData (int ,int ,TYPE_1__*) ;
 scalar_t__ GetDefaultLayoutForLocale (scalar_t__) ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ GetSystemDefaultLCID () ;
 int IDC_INPUT_LANG_COMBO ;
 int IDC_KEYBOARD_LO_COMBO ;
 TYPE_1__* LayoutList_GetFirst () ;
 TYPE_1__* LocaleList_GetFirst () ;

__attribute__((used)) static VOID
OnInitAddDialog(HWND hwndDlg)
{
    HWND hwndLocaleCombo = GetDlgItem(hwndDlg, IDC_INPUT_LANG_COMBO);
    HWND hwndLayoutCombo = GetDlgItem(hwndDlg, IDC_KEYBOARD_LO_COMBO);
    LOCALE_LIST_NODE *pCurrentLocale;
    LAYOUT_LIST_NODE *pCurrentLayout;
    DWORD dwDefaultLocaleId;
    DWORD dwDefaultLayoutId;
    INT iItemIndex;

    dwDefaultLocaleId = GetSystemDefaultLCID();

    for (pCurrentLocale = LocaleList_GetFirst();
         pCurrentLocale != ((void*)0);
         pCurrentLocale = pCurrentLocale->pNext)
    {
        iItemIndex = ComboBox_AddString(hwndLocaleCombo, pCurrentLocale->pszName);
        ComboBox_SetItemData(hwndLocaleCombo, iItemIndex, pCurrentLocale);

        if (pCurrentLocale->dwId == dwDefaultLocaleId)
        {
            ComboBox_SetCurSel(hwndLocaleCombo, iItemIndex);
        }
    }

    dwDefaultLayoutId = GetDefaultLayoutForLocale(dwDefaultLocaleId);

    for (pCurrentLayout = LayoutList_GetFirst();
         pCurrentLayout != ((void*)0);
         pCurrentLayout = pCurrentLayout->pNext)
    {
        iItemIndex = ComboBox_AddString(hwndLayoutCombo, pCurrentLayout->pszName);
        ComboBox_SetItemData(hwndLayoutCombo, iItemIndex, pCurrentLayout);

        if (pCurrentLayout->dwId == dwDefaultLayoutId)
        {
            ComboBox_SetCurSel(hwndLayoutCombo, iItemIndex);
        }
    }

    if (dwDefaultLayoutId == 0)
        ComboBox_SetCurSel(hwndLayoutCombo, 0);
}
