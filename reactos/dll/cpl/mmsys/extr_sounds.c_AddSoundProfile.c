
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int szValue ;
struct TYPE_4__ {int szName; int szDesc; } ;
typedef int TCHAR ;
typedef int SOUND_SCHEME_CONTEXT ;
typedef TYPE_1__* PSOUND_SCHEME_CONTEXT ;
typedef scalar_t__ LRESULT ;
typedef int LPBYTE ;
typedef int HWND ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CB_ERR ;
 scalar_t__ ComboBox_AddString (int ,int *) ;
 int ComboBox_DeleteString (int ,scalar_t__) ;
 int ComboBox_SetCurSel (int ,scalar_t__) ;
 int ComboBox_SetItemData (int ,scalar_t__,TYPE_1__*) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IDC_SOUND_SCHEME ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int *,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int *,int *,int *,int ,scalar_t__*) ;
 int StringCchCopy (int ,int,int *) ;
 scalar_t__ TRUE ;

BOOL
AddSoundProfile(HWND hwndDlg, HKEY hKey, TCHAR * szSubKey, BOOL SetDefault)
{
    HKEY hSubKey;
    TCHAR szValue[MAX_PATH];
    DWORD cbValue, dwResult;
    LRESULT lResult;
    PSOUND_SCHEME_CONTEXT pScheme;

    if (RegOpenKeyEx(hKey,
                     szSubKey,
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    cbValue = sizeof(szValue);
    dwResult = RegQueryValueEx(hSubKey,
                               ((void*)0),
                               ((void*)0),
                               ((void*)0),
                               (LPBYTE)szValue,
                               &cbValue);
    RegCloseKey(hSubKey);

    if (dwResult != ERROR_SUCCESS)
        return FALSE;


    lResult = ComboBox_AddString(GetDlgItem(hwndDlg, IDC_SOUND_SCHEME), szValue);
    if (lResult == CB_ERR)
        return FALSE;


    pScheme = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(SOUND_SCHEME_CONTEXT));
    if (pScheme == ((void*)0))
    {

        ComboBox_DeleteString(GetDlgItem(hwndDlg, IDC_SOUND_SCHEME), lResult);
        return FALSE;
    }

    StringCchCopy(pScheme->szDesc, MAX_PATH, szValue);
    StringCchCopy(pScheme->szName, MAX_PATH, szSubKey);


    ComboBox_SetItemData(GetDlgItem(hwndDlg, IDC_SOUND_SCHEME), lResult, pScheme);


    if (SetDefault)
    {
        ComboBox_SetCurSel(GetDlgItem(hwndDlg, IDC_SOUND_SCHEME), lResult);
    }

    return TRUE;
}
