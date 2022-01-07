
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPBYTE ;
typedef int HWND ;
typedef int HKEY ;
typedef int DWORD ;


 int BM_GETCHECK ;
 scalar_t__ BST_CHECKED ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int IDC_REPORTASWORKSTATION ;
 int KEY_WRITE ;
 int REG_DWORD ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyEx (int ,int ,int ,int *,int ,int ,int *,int *,int *) ;
 int RegSetValueEx (int ,int ,int ,int ,int ,int) ;
 int ReportAsWorkstationKey ;
 scalar_t__ SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int _T (char*) ;

__attribute__((used)) static VOID
OnOK(HWND hwndDlg)
{
    HKEY hKey;
    DWORD ReportAsWorkstation;

    ReportAsWorkstation = (SendDlgItemMessageW(hwndDlg,
                                               IDC_REPORTASWORKSTATION,
                                               BM_GETCHECK,
                                               0,
                                               0) == BST_CHECKED);

    if (RegCreateKeyEx(HKEY_LOCAL_MACHINE,
                       ReportAsWorkstationKey,
                       0,
                       ((void*)0),
                       0,
                       KEY_WRITE,
                       ((void*)0),
                       &hKey,
                       ((void*)0)) == ERROR_SUCCESS)
    {
        RegSetValueEx(hKey,
                      _T("ReportAsWorkstation"),
                      0,
                      REG_DWORD,
                      (LPBYTE)&ReportAsWorkstation,
                      sizeof(DWORD));

        RegCloseKey(hKey);
    }
}
