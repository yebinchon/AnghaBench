
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int si ;
typedef int VOID ;
typedef int ULONG_PTR ;
struct TYPE_9__ {int cb; int * hProcess; int * hThread; } ;
struct TYPE_10__ {size_t Selection; TYPE_2__ PrevWindowPi; TYPE_1__* ScreenSaverItems; } ;
struct TYPE_8__ {int szFilename; } ;
typedef int TCHAR ;
typedef TYPE_2__ STARTUPINFO ;
typedef TYPE_3__* PDATA ;
typedef scalar_t__ HWND ;


 int CloseHandle (int *) ;
 int CreateProcess (int *,int *,int *,int *,int ,int ,int *,int *,TYPE_2__*,TYPE_2__*) ;
 int FALSE ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int IDC_SCREENS_PREVIEW ;
 int TerminateProcess (int *,int ) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int _T (char*) ;
 int _stprintf (int *,int ,int ,int ) ;

__attribute__((used)) static VOID
SetScreenSaverPreviewBox(HWND hwndDlg, PDATA pData)
{
    HWND hPreview = GetDlgItem(hwndDlg, IDC_SCREENS_PREVIEW);
    STARTUPINFO si;
    TCHAR szCmdline[2048];


    if (pData->PrevWindowPi.hProcess)
    {
        TerminateProcess(pData->PrevWindowPi.hProcess, 0);
        CloseHandle(pData->PrevWindowPi.hProcess);
        CloseHandle(pData->PrevWindowPi.hThread);
        pData->PrevWindowPi.hThread = pData->PrevWindowPi.hProcess = ((void*)0);
    }

    if (pData->Selection > 0)
    {
        _stprintf(szCmdline,
                  _T("%s /p %Iu"),
                  pData->ScreenSaverItems[pData->Selection].szFilename,
                  (ULONG_PTR)hPreview);

        ZeroMemory(&si, sizeof(si));
        si.cb = sizeof(si);
        ZeroMemory(&pData->PrevWindowPi, sizeof(pData->PrevWindowPi));

        if (!CreateProcess(((void*)0),
                           szCmdline,
                           ((void*)0),
                           ((void*)0),
                           FALSE,
                           0,
                           ((void*)0),
                           ((void*)0),
                           &si,
                           &pData->PrevWindowPi))
        {
            pData->PrevWindowPi.hThread = pData->PrevWindowPi.hProcess = ((void*)0);
        }
    }
}
