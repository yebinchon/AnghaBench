
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ message; } ;
typedef TYPE_1__ MSG ;
typedef int HWND ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int DispatchMessage (TYPE_1__*) ;
 scalar_t__ FALSE ;
 int INFINITE ;
 scalar_t__ IsDialogMessage (int ,TYPE_1__*) ;
 scalar_t__ MsgWaitForMultipleObjects (int,int *,scalar_t__,int ,int ) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessage (TYPE_1__*,int *,int ,int ,int ) ;
 int QS_ALLINPUT ;
 scalar_t__ TRUE ;
 int TranslateMessage (TYPE_1__*) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WM_QUIT ;

__attribute__((used)) static BOOL
WaitForSettingsDialog(HWND hwndDlg,
                      HANDLE hProcess)
{
    DWORD dwResult;
    MSG msg;

    while (TRUE)
    {
        dwResult = MsgWaitForMultipleObjects(1,
                                             &hProcess,
                                             FALSE,
                                             INFINITE,
                                             QS_ALLINPUT);
        if (dwResult == WAIT_OBJECT_0 + 1)
        {
            if (PeekMessage(&msg, ((void*)0), 0, 0, PM_REMOVE))
            {
                if (msg.message == WM_QUIT)
                {
                    return FALSE;
                }
                if (IsDialogMessage(hwndDlg, &msg))
                {
                    TranslateMessage(&msg);
                    DispatchMessage(&msg);
                }
            }
            else
            {
                return FALSE;
            }
        }
        else if (dwResult == WAIT_OBJECT_0)
        {
            return TRUE;
        }
        else
        {
            return FALSE;
        }
    }
}
