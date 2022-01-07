
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_3__ {int hProgress; int hDlg; } ;
typedef TYPE_1__* PPROGRESS_DATA ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int ActionThread ;
 int CloseHandle (scalar_t__) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_SERVCON_PROGRESS ;
 int MAKELPARAM (int ,int ) ;
 int PBM_SETRANGE ;
 int PBM_SETSTEP ;
 int PROGRESS_RANGE ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;
 scalar_t__ _beginthreadex (int *,int ,int *,TYPE_1__*,int ,int *) ;

__attribute__((used)) static BOOL
InitProgressDialog(HWND hDlg,
                   UINT Message,
                   WPARAM wParam,
                   LPARAM lParam)
{
    PPROGRESS_DATA ProgressData = (PPROGRESS_DATA)lParam;
    HANDLE hThread;

    ProgressData->hDlg = hDlg;


    ProgressData->hProgress = GetDlgItem(hDlg,
                                         IDC_SERVCON_PROGRESS);
    if (!ProgressData->hProgress)
        return FALSE;


    SendMessageW(ProgressData->hProgress,
                 PBM_SETRANGE,
                 0,
                 MAKELPARAM(0, PROGRESS_RANGE));


    SendMessageW(ProgressData->hProgress,
                 PBM_SETSTEP,
                 (WPARAM)1,
                 0);


    hThread = (HANDLE)_beginthreadex(((void*)0), 0, &ActionThread, ProgressData, 0, ((void*)0));
    if (!hThread) return FALSE;

    CloseHandle(hThread);

    return TRUE;
}
