
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int szName; } ;
typedef int TCHAR ;
typedef TYPE_1__* PSOUND_SCHEME_CONTEXT ;
typedef scalar_t__ LRESULT ;
typedef int HWND ;


 scalar_t__ CB_ERR ;
 scalar_t__ ComboBox_GetCount (int ) ;
 scalar_t__ ComboBox_GetItemData (int ,scalar_t__) ;
 int GetDlgItem (int ,int ) ;
 int IDC_SOUND_SCHEME ;
 int _tcsicmp (int ,int *) ;

PSOUND_SCHEME_CONTEXT FindSoundProfile(HWND hwndDlg, TCHAR * szName)
{
    LRESULT lCount, lIndex, lResult;
    PSOUND_SCHEME_CONTEXT pScheme;
    HWND hwndComboBox;

    hwndComboBox = GetDlgItem(hwndDlg, IDC_SOUND_SCHEME);
    lCount = ComboBox_GetCount(hwndComboBox);
    if (lCount == CB_ERR)
    {
        return ((void*)0);
    }

    for (lIndex = 0; lIndex < lCount; lIndex++)
    {
        lResult = ComboBox_GetItemData(hwndComboBox, lIndex);
        if (lResult == CB_ERR)
        {
            continue;
        }

        pScheme = (PSOUND_SCHEME_CONTEXT)lResult;
        if (!_tcsicmp(pScheme->szName, szName))
        {
            return pScheme;
        }
    }
    return ((void*)0);
}
