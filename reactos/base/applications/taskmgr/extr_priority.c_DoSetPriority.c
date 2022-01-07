
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 int FALSE ;
 int GetLastErrorText (int *,int) ;
 scalar_t__ GetSelectedProcessId () ;
 int IDS_MSG_TASKMGRWARNING ;
 int IDS_MSG_UNABLECHANGEPRIORITY ;
 int IDS_MSG_WARNINGCHANGEPRIORITY ;
 scalar_t__ IDYES ;
 int LoadStringW (int ,int ,int *,int) ;
 int MB_ICONSTOP ;
 int MB_ICONWARNING ;
 int MB_OK ;
 int MB_YESNO ;
 scalar_t__ MessageBoxW (int ,int *,int *,int) ;
 int OpenProcess (int ,int ,scalar_t__) ;
 int PROCESS_SET_INFORMATION ;
 int SetPriorityClass (int ,scalar_t__) ;
 int hInst ;
 int hMainWnd ;

void DoSetPriority(DWORD priority)
{
    DWORD dwProcessId;
    HANDLE hProcess;
    WCHAR szText[260];
    WCHAR szTitle[256];

    dwProcessId = GetSelectedProcessId();

    if (dwProcessId == 0)
        return;

    LoadStringW(hInst, IDS_MSG_TASKMGRWARNING, szTitle, 256);
    LoadStringW(hInst, IDS_MSG_WARNINGCHANGEPRIORITY, szText, 260);
    if (MessageBoxW(hMainWnd, szText, szTitle, MB_YESNO|MB_ICONWARNING) != IDYES)
        return;

    hProcess = OpenProcess(PROCESS_SET_INFORMATION, FALSE, dwProcessId);

    if (!hProcess)
    {
        GetLastErrorText(szText, 260);
        LoadStringW(hInst, IDS_MSG_UNABLECHANGEPRIORITY, szTitle, 256);
        MessageBoxW(hMainWnd, szText, szTitle, MB_OK|MB_ICONSTOP);
        return;
    }

    if (!SetPriorityClass(hProcess, priority))
    {
        GetLastErrorText(szText, 260);
        LoadStringW(hInst, IDS_MSG_UNABLECHANGEPRIORITY, szTitle, 256);
        MessageBoxW(hMainWnd, szText, szTitle, MB_OK|MB_ICONSTOP);
    }

    CloseHandle(hProcess);
}
