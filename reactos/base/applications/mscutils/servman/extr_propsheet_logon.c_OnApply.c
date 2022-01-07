
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {scalar_t__ bAccountChanged; TYPE_2__* pService; TYPE_1__* pServiceConfig; } ;
struct TYPE_6__ {int lpServiceName; } ;
struct TYPE_5__ {int dwServiceType; } ;
typedef TYPE_3__* PLOGONDATA ;
typedef int HWND ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int BM_GETCHECK ;
 scalar_t__ BST_CHECKED ;
 int * DEFAULT_PASSWORD ;
 scalar_t__ FALSE ;
 int GetDlgItemText (int ,int ,int *,int) ;
 int GetModuleHandle (int *) ;
 int IDC_LOGON_ACCOUNTNAME ;
 int IDC_LOGON_INTERACTIVE ;
 int IDC_LOGON_PASSWORD1 ;
 int IDC_LOGON_PASSWORD2 ;
 int IDC_LOGON_SYSTEMACCOUNT ;
 int IDS_APPNAME ;
 int IDS_INVALID_PASSWORD ;
 int IDS_NOT_SAME_PASSWORD ;
 int MB_ICONWARNING ;
 int MB_OK ;
 int ResourceMessageBox (int ,int ,int,int ,int ) ;
 int SERVICE_INTERACTIVE_PROCESS ;
 int SERVICE_NO_CHANGE ;
 scalar_t__ SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 scalar_t__ SetServiceAccount (int ,int ,int *,int *) ;
 scalar_t__ TRUE ;
 scalar_t__ wcscmp (int *,int *) ;
 int wcscpy (int *,char*) ;

__attribute__((used)) static
BOOL
OnApply(
    HWND hwndDlg,
    PLOGONDATA pLogonData)
{
    WCHAR szAccountName[64];
    WCHAR szPassword1[64];
    WCHAR szPassword2[64];
    DWORD dwServiceType = SERVICE_NO_CHANGE;
    BOOL bRet = TRUE;

    if (!pLogonData->bAccountChanged)
        return TRUE;

    if (SendDlgItemMessageW(hwndDlg, IDC_LOGON_SYSTEMACCOUNT, BM_GETCHECK, 0, 0) == BST_CHECKED)
    {

        wcscpy(szAccountName, L"LocalSystem");
        wcscpy(szPassword1, L"");
        wcscpy(szPassword2, L"");


        dwServiceType = pLogonData->pServiceConfig->dwServiceType;
        if (SendDlgItemMessageW(hwndDlg, IDC_LOGON_INTERACTIVE, BM_GETCHECK, 0, 0) == BST_CHECKED)
            dwServiceType |= SERVICE_INTERACTIVE_PROCESS;
        else
            dwServiceType &= ~SERVICE_INTERACTIVE_PROCESS;
    }
    else
    {

        GetDlgItemText(hwndDlg, IDC_LOGON_ACCOUNTNAME, szAccountName, 64);
        GetDlgItemText(hwndDlg, IDC_LOGON_PASSWORD1, szPassword1, 64);
        GetDlgItemText(hwndDlg, IDC_LOGON_PASSWORD2, szPassword2, 64);

        if (wcscmp(szPassword1, szPassword2))
        {
            ResourceMessageBox(GetModuleHandle(((void*)0)), hwndDlg, MB_OK | MB_ICONWARNING, IDS_APPNAME, IDS_NOT_SAME_PASSWORD);
            return FALSE;
        }

        if (!wcscmp(szPassword1, DEFAULT_PASSWORD))
        {
            ResourceMessageBox(GetModuleHandle(((void*)0)), hwndDlg, MB_OK | MB_ICONWARNING, IDS_APPNAME, IDS_INVALID_PASSWORD);
            return FALSE;
        }
    }


    bRet = SetServiceAccount(pLogonData->pService->lpServiceName,
                             dwServiceType,
                             szAccountName,
                             szPassword1);
    if (bRet == FALSE)
    {

    }

    if (bRet == TRUE)
    {
        pLogonData->bAccountChanged = FALSE;

    }

    return bRet;
}
