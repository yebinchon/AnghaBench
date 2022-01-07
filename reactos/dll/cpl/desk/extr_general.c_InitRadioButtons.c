
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int TCHAR ;
typedef int LPBYTE ;
typedef int HWND ;
typedef int HKEY ;
typedef int DWORD ;


 int BM_SETCHECK ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int IDC_ASKME_RB ;
 int IDC_RESTART_RB ;
 int IDC_WITHOUTREBOOT_RB ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int ,int ,int *,int ,int*) ;
 int SendDlgItemMessage (int ,int ,int ,int,int) ;
 int _T (char*) ;
 int _ttoi (int *) ;

__attribute__((used)) static VOID
InitRadioButtons(HWND hWnd)
{
    HKEY hKey;

    if (RegOpenKeyEx(HKEY_CURRENT_USER,
                     _T("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Controls Folder\\Display"),
                     0, KEY_READ, &hKey) == ERROR_SUCCESS)
    {
        TCHAR szBuf[64];
        DWORD dwSize = 64;

        if (RegQueryValueEx(hKey, _T("DynaSettingsChange"), 0, ((void*)0),
                            (LPBYTE)szBuf, &dwSize) == ERROR_SUCCESS)
        {
            switch (_ttoi(szBuf))
            {
                case 0:
                    SendDlgItemMessage(hWnd, IDC_RESTART_RB, BM_SETCHECK, 1, 1);
                    break;
                case 1:
                    SendDlgItemMessage(hWnd, IDC_WITHOUTREBOOT_RB, BM_SETCHECK, 1, 1);
                    break;
                case 3:
                    SendDlgItemMessage(hWnd, IDC_ASKME_RB, BM_SETCHECK, 1, 1);
                    break;
            }
        }
        else
            SendDlgItemMessage(hWnd, IDC_WITHOUTREBOOT_RB, BM_SETCHECK, 1, 1);

        RegCloseKey(hKey);
    }
    else
        SendDlgItemMessage(hWnd, IDC_WITHOUTREBOOT_RB, BM_SETCHECK, 1, 1);
}
