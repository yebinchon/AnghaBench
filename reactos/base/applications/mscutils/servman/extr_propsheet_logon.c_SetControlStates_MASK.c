#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {scalar_t__ bInitialized; char* szAccountName; char* szPassword1; char* szPassword2; int bLocalSystem; scalar_t__ nInteractive; } ;
typedef  TYPE_1__* PLOGONDATA ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BM_GETCHECK ; 
 int /*<<< orphan*/  BM_SETCHECK ; 
 scalar_t__ BST_UNCHECKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  IDC_LOGON_ACCOUNTNAME ; 
 int /*<<< orphan*/  IDC_LOGON_INTERACTIVE ; 
 int /*<<< orphan*/  IDC_LOGON_PASSWORD1 ; 
 int /*<<< orphan*/  IDC_LOGON_PASSWORD2 ; 
 int /*<<< orphan*/  IDC_LOGON_PW1TEXT ; 
 int /*<<< orphan*/  IDC_LOGON_PW2TEXT ; 
 int /*<<< orphan*/  IDC_LOGON_SEARCH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static
VOID
FUNC5(
    HWND hwndDlg,
    PLOGONDATA pLogonData,
    BOOL bLocalSystem)
{
    FUNC0(FUNC1(hwndDlg, IDC_LOGON_INTERACTIVE), bLocalSystem);
    FUNC0(FUNC1(hwndDlg, IDC_LOGON_ACCOUNTNAME), !bLocalSystem);
    FUNC0(FUNC1(hwndDlg, IDC_LOGON_SEARCH), FALSE /*!bLocalSystem*/);
    FUNC0(FUNC1(hwndDlg, IDC_LOGON_PW1TEXT), !bLocalSystem);
    FUNC0(FUNC1(hwndDlg, IDC_LOGON_PASSWORD1), !bLocalSystem);
    FUNC0(FUNC1(hwndDlg, IDC_LOGON_PW2TEXT), !bLocalSystem);
    FUNC0(FUNC1(hwndDlg, IDC_LOGON_PASSWORD2), !bLocalSystem);

    if (bLocalSystem)
    {
        FUNC3(hwndDlg, IDC_LOGON_INTERACTIVE, BM_SETCHECK, (WPARAM)pLogonData->nInteractive, 0);

        if (pLogonData->bInitialized == TRUE)
        {
            FUNC2(hwndDlg, IDC_LOGON_ACCOUNTNAME, pLogonData->szAccountName, 64);
            FUNC2(hwndDlg, IDC_LOGON_PASSWORD1, pLogonData->szPassword1, 64);
            FUNC2(hwndDlg, IDC_LOGON_PASSWORD2, pLogonData->szPassword2, 64);
        }

        FUNC4(hwndDlg, IDC_LOGON_ACCOUNTNAME, L"");
        FUNC4(hwndDlg, IDC_LOGON_PASSWORD1, L"");
        FUNC4(hwndDlg, IDC_LOGON_PASSWORD2, L"");
    }
    else
    {
        if (pLogonData->bInitialized == TRUE)
            pLogonData->nInteractive = FUNC3(hwndDlg, IDC_LOGON_INTERACTIVE, BM_GETCHECK, 0, 0);
        FUNC3(hwndDlg, IDC_LOGON_INTERACTIVE, BM_SETCHECK, (WPARAM)BST_UNCHECKED, 0);

        FUNC4(hwndDlg, IDC_LOGON_ACCOUNTNAME, pLogonData->szAccountName);
        FUNC4(hwndDlg, IDC_LOGON_PASSWORD1, pLogonData->szPassword1);
        FUNC4(hwndDlg, IDC_LOGON_PASSWORD2, pLogonData->szPassword2);
    }

    pLogonData->bLocalSystem = bLocalSystem;
}