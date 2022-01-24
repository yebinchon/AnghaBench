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
typedef  int /*<<< orphan*/  szBuffer ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_7__ {TYPE_2__* pServiceFailure; } ;
struct TYPE_6__ {int dwResetPeriod; int* lpCommand; TYPE_1__* lpsaActions; int /*<<< orphan*/  cActions; } ;
struct TYPE_5__ {int Type; int Delay; } ;
typedef  int* PWSTR ;
typedef  TYPE_3__* PRECOVERYDATA ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ LONG_PTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SETCHECK ; 
 int BST_CHECKED ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int IDC_ADD_FAILCOUNT ; 
 int IDC_FIRST_FAILURE ; 
 int IDC_PARAMETERS ; 
 int IDC_PROGRAM ; 
 int IDC_RESET_TIME ; 
 int IDC_RESTART_OPTIONS ; 
 int IDC_RESTART_TEXT1 ; 
 int IDC_RESTART_TEXT2 ; 
 int IDC_RESTART_TIME ; 
 int IDC_RUN_GROUPBOX ; 
#define  SC_ACTION_NONE 131 
#define  SC_ACTION_REBOOT 130 
#define  SC_ACTION_RESTART 129 
#define  SC_ACTION_RUN_COMMAND 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,int) ; 
 int* FUNC7 (int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int* FUNC9 (int*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static
VOID
FUNC11(
    HWND hwndDlg,
    PRECOVERYDATA pRecoveryData)
{
    WCHAR szBuffer[256];
    PWSTR startPtr, endPtr;
    INT index, id, length;
    DWORD i;

    for (i = 0; i < FUNC6(pRecoveryData->pServiceFailure->cActions, 3); i++)
    {
        index = -1;

        switch (pRecoveryData->pServiceFailure->lpsaActions[i].Type)
        {
            case SC_ACTION_NONE:
                index = 0;
                break;

            case SC_ACTION_RESTART:
                index = 1;

                FUNC10(szBuffer, L"%lu", pRecoveryData->pServiceFailure->lpsaActions[i].Delay / 60000);
                FUNC3(hwndDlg,
                                    IDC_RESTART_TIME,
                                    WM_SETTEXT,
                                    0,
                                    (LPARAM)szBuffer);

                for (id = IDC_RESTART_TEXT1; id <= IDC_RESTART_TEXT2; id++)
                     FUNC1(FUNC2(hwndDlg, id), TRUE);
                break;

            case SC_ACTION_REBOOT:
                index = 3;

                FUNC1(FUNC2(hwndDlg, IDC_RESTART_OPTIONS), TRUE);
                break;

            case SC_ACTION_RUN_COMMAND:
                index = 2;

                for (id = IDC_RUN_GROUPBOX; id <= IDC_ADD_FAILCOUNT; id++)
                    FUNC1(FUNC2(hwndDlg, id), TRUE);
                break;
        }

        if (index != -1)
        {
            FUNC3(hwndDlg,
                                IDC_FIRST_FAILURE + i,
                                CB_SETCURSEL,
                                index,
                                0);
        }
    }

    FUNC10(szBuffer, L"%lu", pRecoveryData->pServiceFailure->dwResetPeriod / 86400);
    FUNC3(hwndDlg,
                        IDC_RESET_TIME,
                        WM_SETTEXT,
                        0,
                        (LPARAM)szBuffer);

    if (pRecoveryData->pServiceFailure->lpCommand != NULL)
    {
        FUNC4(szBuffer, sizeof(szBuffer));

        startPtr = pRecoveryData->pServiceFailure->lpCommand;
        if (*startPtr == L'\"')
            startPtr++;

        endPtr = FUNC7(startPtr, L'\"');
        if (endPtr != NULL)
        {
            length = (INT)((LONG_PTR)endPtr - (LONG_PTR)startPtr);
            FUNC0(szBuffer, startPtr, length);
        }
        else
        {
            FUNC8(szBuffer, startPtr);
        }

        FUNC3(hwndDlg,
                            IDC_PROGRAM,
                            WM_SETTEXT,
                            0,
                            (LPARAM)szBuffer);

        FUNC4(szBuffer, sizeof(szBuffer));

        if (endPtr != NULL)
        {
            startPtr = endPtr + 1;
            while (FUNC5(*startPtr))
                startPtr++;

            endPtr = FUNC9(pRecoveryData->pServiceFailure->lpCommand, L"/fail=%1%");
            if (endPtr != NULL)
            {
                while (FUNC5(*(endPtr - 1)))
                    endPtr--;

                length = (INT)((LONG_PTR)endPtr - (LONG_PTR)startPtr);
                FUNC0(szBuffer, startPtr, length);
            }
            else
            {
                FUNC8(szBuffer, startPtr);
            }

            FUNC3(hwndDlg,
                                IDC_PARAMETERS,
                                WM_SETTEXT,
                                0,
                                (LPARAM)szBuffer);

            endPtr = FUNC9(pRecoveryData->pServiceFailure->lpCommand, L"/fail=%1%");
            if (endPtr != NULL)
            {
                FUNC3(hwndDlg,
                                    IDC_ADD_FAILCOUNT,
                                    BM_SETCHECK,
                                    BST_CHECKED,
                                    0);
            }
        }
    }
}