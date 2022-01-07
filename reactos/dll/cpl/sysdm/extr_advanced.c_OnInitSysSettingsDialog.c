
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPBYTE ;
typedef int HWND ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int BM_SETCHECK ;
 int BST_CHECKED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int HKEY_LOCAL_MACHINE ;
 int IDC_REPORTASWORKSTATION ;
 int KEY_READ ;
 scalar_t__ REG_DWORD ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int ,int ,scalar_t__*,int ,scalar_t__*) ;
 int ReportAsWorkstationKey ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int _T (char*) ;

__attribute__((used)) static VOID
OnInitSysSettingsDialog(HWND hwndDlg)
{
    HKEY hKey;
    DWORD dwVal;
    DWORD dwType = REG_DWORD;
    DWORD cbData = sizeof(DWORD);

    if (RegOpenKeyEx(HKEY_LOCAL_MACHINE,
                     ReportAsWorkstationKey,
                     0,
                     KEY_READ,
                     &hKey) == ERROR_SUCCESS)
    {
        if (RegQueryValueEx(hKey,
                            _T("ReportAsWorkstation"),
                            0,
                            &dwType,
                            (LPBYTE)&dwVal,
                            &cbData) == ERROR_SUCCESS)
        {
            if (dwVal != FALSE)
            {

                SendDlgItemMessageW(hwndDlg,
                                    IDC_REPORTASWORKSTATION,
                                    BM_SETCHECK,
                                    BST_CHECKED,
                                    0);
            }
        }

        RegCloseKey(hKey);
    }
}
