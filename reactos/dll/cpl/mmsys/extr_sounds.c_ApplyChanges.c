
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_8__ {struct TYPE_8__* Next; scalar_t__ szValue; TYPE_2__* LabelMap; TYPE_1__* AppMap; } ;
struct TYPE_7__ {TYPE_4__* LabelContext; scalar_t__ szName; } ;
struct TYPE_6__ {int szName; } ;
struct TYPE_5__ {int szName; } ;
typedef int TCHAR ;
typedef TYPE_3__* PSOUND_SCHEME_CONTEXT ;
typedef TYPE_4__* PLABEL_CONTEXT ;
typedef scalar_t__ LRESULT ;
typedef int LPBYTE ;
typedef int LPARAM ;
typedef int LONG_PTR ;
typedef int HWND ;
typedef int HKEY ;
typedef int BOOL ;


 scalar_t__ CB_ERR ;
 int CB_GETCURSEL ;
 int CB_GETITEMDATA ;
 int DWLP_MSGRESULT ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int HKEY_CURRENT_USER ;
 int IDC_SOUND_SCHEME ;
 int KEY_WRITE ;
 scalar_t__ PSNRET_NOERROR ;
 int REG_EXPAND_SZ ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int *,int ,int ,int *) ;
 int RegSetValueEx (int ,int *,int ,int ,int ,int) ;
 scalar_t__ SendMessage (int ,int ,int ,int ) ;
 int SetWindowLongPtr (int ,int ,int ) ;
 int TRUE ;
 int * _T (char*) ;
 int _stprintf (int *,int *,int ,int ) ;
 int _tcslen (scalar_t__) ;

BOOL
ApplyChanges(HWND hwndDlg)
{
    HKEY hKey, hSubKey;
    LRESULT lIndex;
    PSOUND_SCHEME_CONTEXT pScheme;
    HWND hDlgCtrl;
    PLABEL_CONTEXT pLabelContext;
    TCHAR Buffer[100];

    hDlgCtrl = GetDlgItem(hwndDlg, IDC_SOUND_SCHEME);

    lIndex = SendMessage(hDlgCtrl, CB_GETCURSEL, (WPARAM)0, (LPARAM)0);
    if (lIndex == CB_ERR)
    {
        return FALSE;
    }

    lIndex = SendMessage(hDlgCtrl, CB_GETITEMDATA, (WPARAM)lIndex, (LPARAM)0);
    if (lIndex == CB_ERR)
    {
        return FALSE;
    }
    pScheme = (PSOUND_SCHEME_CONTEXT)lIndex;

    if (RegOpenKeyEx(HKEY_CURRENT_USER,
                     _T("AppEvents\\Schemes"),
                     0,
                     KEY_WRITE,
                     &hKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    RegSetValueEx(hKey, ((void*)0), 0, REG_SZ, (LPBYTE)pScheme->szName, (_tcslen(pScheme->szName) +1) * sizeof(TCHAR));
    RegCloseKey(hKey);

    if (RegOpenKeyEx(HKEY_CURRENT_USER,
                     _T("AppEvents\\Schemes\\Apps"),
                     0,
                     KEY_WRITE,
                     &hKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    pLabelContext = pScheme->LabelContext;

    while (pLabelContext)
    {
        _stprintf(Buffer, _T("%s\\%s\\.Current"), pLabelContext->AppMap->szName, pLabelContext->LabelMap->szName);

        if (RegOpenKeyEx(hKey, Buffer, 0, KEY_WRITE, &hSubKey) == ERROR_SUCCESS)
        {
            RegSetValueEx(hSubKey, ((void*)0), 0, REG_EXPAND_SZ, (LPBYTE)pLabelContext->szValue, (_tcslen(pLabelContext->szValue) +1) * sizeof(TCHAR));
            RegCloseKey(hSubKey);
        }

        pLabelContext = pLabelContext->Next;
    }
    RegCloseKey(hKey);

    SetWindowLongPtr(hwndDlg, DWLP_MSGRESULT, (LONG_PTR)PSNRET_NOERROR);
    return TRUE;
}
