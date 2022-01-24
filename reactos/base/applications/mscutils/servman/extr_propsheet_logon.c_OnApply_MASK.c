#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {scalar_t__ bAccountChanged; TYPE_2__* pService; TYPE_1__* pServiceConfig; } ;
struct TYPE_6__ {int /*<<< orphan*/  lpServiceName; } ;
struct TYPE_5__ {int /*<<< orphan*/  dwServiceType; } ;
typedef  TYPE_3__* PLOGONDATA ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BM_GETCHECK ; 
 scalar_t__ BST_CHECKED ; 
 int /*<<< orphan*/ * DEFAULT_PASSWORD ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDC_LOGON_ACCOUNTNAME ; 
 int /*<<< orphan*/  IDC_LOGON_INTERACTIVE ; 
 int /*<<< orphan*/  IDC_LOGON_PASSWORD1 ; 
 int /*<<< orphan*/  IDC_LOGON_PASSWORD2 ; 
 int /*<<< orphan*/  IDC_LOGON_SYSTEMACCOUNT ; 
 int /*<<< orphan*/  IDS_APPNAME ; 
 int /*<<< orphan*/  IDS_INVALID_PASSWORD ; 
 int /*<<< orphan*/  IDS_NOT_SAME_PASSWORD ; 
 int MB_ICONWARNING ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERVICE_INTERACTIVE_PROCESS ; 
 int /*<<< orphan*/  SERVICE_NO_CHANGE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static
BOOL
FUNC7(
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

    if (FUNC3(hwndDlg, IDC_LOGON_SYSTEMACCOUNT, BM_GETCHECK, 0, 0) == BST_CHECKED)
    {
        /* System account selected */
        FUNC6(szAccountName, L"LocalSystem");
        FUNC6(szPassword1, L"");
        FUNC6(szPassword2, L"");

        /* Handle the interactive flag */
        dwServiceType = pLogonData->pServiceConfig->dwServiceType;
        if (FUNC3(hwndDlg, IDC_LOGON_INTERACTIVE, BM_GETCHECK, 0, 0) == BST_CHECKED)
            dwServiceType |= SERVICE_INTERACTIVE_PROCESS;
        else
            dwServiceType &= ~SERVICE_INTERACTIVE_PROCESS;
    }
    else
    {
        /* Other account selected */
        FUNC0(hwndDlg, IDC_LOGON_ACCOUNTNAME, szAccountName, 64);
        FUNC0(hwndDlg, IDC_LOGON_PASSWORD1, szPassword1, 64);
        FUNC0(hwndDlg, IDC_LOGON_PASSWORD2, szPassword2, 64);

        if (FUNC5(szPassword1, szPassword2))
        {
            FUNC2(FUNC1(NULL), hwndDlg, MB_OK | MB_ICONWARNING, IDS_APPNAME, IDS_NOT_SAME_PASSWORD);
            return FALSE;
        }

        if (!FUNC5(szPassword1, DEFAULT_PASSWORD))
        {
            FUNC2(FUNC1(NULL), hwndDlg, MB_OK | MB_ICONWARNING, IDS_APPNAME, IDS_INVALID_PASSWORD);
            return FALSE;
        }
    }


    bRet = FUNC4(pLogonData->pService->lpServiceName,
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