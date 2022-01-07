
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int szBuffer ;
typedef scalar_t__ WCHAR ;
struct TYPE_3__ {scalar_t__ iValue; scalar_t__ szValue; } ;
typedef TYPE_1__* PWINED3D_SETTINGS ;
typedef int PWCHAR ;
typedef int LPBYTE ;
typedef int LPARAM ;
typedef size_t INT ;
typedef int HWND ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int CB_ADDSTRING ;
 int CB_SETCURSEL ;
 int MAX_KEY_LENGTH ;
 scalar_t__ REG_DWORD ;
 scalar_t__ REG_SZ ;
 int RegQueryValueExW (int ,int ,int *,scalar_t__*,int ,scalar_t__*) ;
 int SendDlgItemMessageW (int ,size_t,int ,size_t,int ) ;
 int wcscmp (scalar_t__*,scalar_t__) ;

void InitControl(HWND hWndDlg, HKEY hKey, PWCHAR szKey, PWINED3D_SETTINGS pSettings, INT iControlId, INT iCount)
{
    WCHAR szBuffer[MAX_KEY_LENGTH];
    DWORD dwSize = sizeof(szBuffer);
    DWORD dwType = 0;
    INT iCurrent;
    INT iActive = 0;

    RegQueryValueExW(hKey, szKey, ((void*)0), &dwType, (LPBYTE)szBuffer, &dwSize);

    for(iCurrent = 0; iCurrent < iCount; iCurrent++)
    {
        SendDlgItemMessageW(hWndDlg, iControlId, CB_ADDSTRING, 0, (LPARAM)pSettings[iCurrent].szValue);

        if(dwSize && ((dwType == REG_DWORD && *szBuffer == pSettings[iCurrent].iValue) ||
           (dwType == REG_SZ && !wcscmp(szBuffer, pSettings[iCurrent].szValue))))
        {
            iActive = iCurrent;
        }
    }

    SendDlgItemMessageW(hWndDlg, iControlId, CB_SETCURSEL, iActive, 0);

}
