
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int szBuffer ;
typedef int WCHAR ;
typedef int VOID ;
struct TYPE_7__ {TYPE_2__* pServiceFailure; } ;
struct TYPE_6__ {int dwResetPeriod; int* lpCommand; TYPE_1__* lpsaActions; int cActions; } ;
struct TYPE_5__ {int Type; int Delay; } ;
typedef int* PWSTR ;
typedef TYPE_3__* PRECOVERYDATA ;
typedef int LPARAM ;
typedef scalar_t__ LONG_PTR ;
typedef int INT ;
typedef int HWND ;
typedef size_t DWORD ;


 int BM_SETCHECK ;
 int BST_CHECKED ;
 int CB_SETCURSEL ;
 int CopyMemory (int *,int*,int) ;
 int EnableWindow (int ,int ) ;
 int GetDlgItem (int ,int) ;
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




 int SendDlgItemMessageW (int ,int,int ,int,int ) ;
 int TRUE ;
 int WM_SETTEXT ;
 int ZeroMemory (int *,int) ;
 scalar_t__ iswspace (int) ;
 size_t min (int ,int) ;
 int* wcschr (int*,int) ;
 int wcscpy (int *,int*) ;
 int* wcsstr (int*,char*) ;
 int wsprintf (int *,char*,int) ;

__attribute__((used)) static
VOID
ShowFailureActions(
    HWND hwndDlg,
    PRECOVERYDATA pRecoveryData)
{
    WCHAR szBuffer[256];
    PWSTR startPtr, endPtr;
    INT index, id, length;
    DWORD i;

    for (i = 0; i < min(pRecoveryData->pServiceFailure->cActions, 3); i++)
    {
        index = -1;

        switch (pRecoveryData->pServiceFailure->lpsaActions[i].Type)
        {
            case 131:
                index = 0;
                break;

            case 129:
                index = 1;

                wsprintf(szBuffer, L"%lu", pRecoveryData->pServiceFailure->lpsaActions[i].Delay / 60000);
                SendDlgItemMessageW(hwndDlg,
                                    IDC_RESTART_TIME,
                                    WM_SETTEXT,
                                    0,
                                    (LPARAM)szBuffer);

                for (id = IDC_RESTART_TEXT1; id <= IDC_RESTART_TEXT2; id++)
                     EnableWindow(GetDlgItem(hwndDlg, id), TRUE);
                break;

            case 130:
                index = 3;

                EnableWindow(GetDlgItem(hwndDlg, IDC_RESTART_OPTIONS), TRUE);
                break;

            case 128:
                index = 2;

                for (id = IDC_RUN_GROUPBOX; id <= IDC_ADD_FAILCOUNT; id++)
                    EnableWindow(GetDlgItem(hwndDlg, id), TRUE);
                break;
        }

        if (index != -1)
        {
            SendDlgItemMessageW(hwndDlg,
                                IDC_FIRST_FAILURE + i,
                                CB_SETCURSEL,
                                index,
                                0);
        }
    }

    wsprintf(szBuffer, L"%lu", pRecoveryData->pServiceFailure->dwResetPeriod / 86400);
    SendDlgItemMessageW(hwndDlg,
                        IDC_RESET_TIME,
                        WM_SETTEXT,
                        0,
                        (LPARAM)szBuffer);

    if (pRecoveryData->pServiceFailure->lpCommand != ((void*)0))
    {
        ZeroMemory(szBuffer, sizeof(szBuffer));

        startPtr = pRecoveryData->pServiceFailure->lpCommand;
        if (*startPtr == L'\"')
            startPtr++;

        endPtr = wcschr(startPtr, L'\"');
        if (endPtr != ((void*)0))
        {
            length = (INT)((LONG_PTR)endPtr - (LONG_PTR)startPtr);
            CopyMemory(szBuffer, startPtr, length);
        }
        else
        {
            wcscpy(szBuffer, startPtr);
        }

        SendDlgItemMessageW(hwndDlg,
                            IDC_PROGRAM,
                            WM_SETTEXT,
                            0,
                            (LPARAM)szBuffer);

        ZeroMemory(szBuffer, sizeof(szBuffer));

        if (endPtr != ((void*)0))
        {
            startPtr = endPtr + 1;
            while (iswspace(*startPtr))
                startPtr++;

            endPtr = wcsstr(pRecoveryData->pServiceFailure->lpCommand, L"/fail=%1%");
            if (endPtr != ((void*)0))
            {
                while (iswspace(*(endPtr - 1)))
                    endPtr--;

                length = (INT)((LONG_PTR)endPtr - (LONG_PTR)startPtr);
                CopyMemory(szBuffer, startPtr, length);
            }
            else
            {
                wcscpy(szBuffer, startPtr);
            }

            SendDlgItemMessageW(hwndDlg,
                                IDC_PARAMETERS,
                                WM_SETTEXT,
                                0,
                                (LPARAM)szBuffer);

            endPtr = wcsstr(pRecoveryData->pServiceFailure->lpCommand, L"/fail=%1%");
            if (endPtr != ((void*)0))
            {
                SendDlgItemMessageW(hwndDlg,
                                    IDC_ADD_FAILCOUNT,
                                    BM_SETCHECK,
                                    BST_CHECKED,
                                    0);
            }
        }
    }
}
