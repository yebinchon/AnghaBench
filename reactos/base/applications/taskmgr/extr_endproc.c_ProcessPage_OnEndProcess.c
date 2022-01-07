
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (scalar_t__) ;
 int FALSE ;
 int GetLastErrorText (int *,int) ;
 scalar_t__ GetSelectedProcessId () ;
 int IDS_MSG_CLOSESYSTEMPROCESS ;
 int IDS_MSG_TASKMGRWARNING ;
 int IDS_MSG_UNABLETERMINATEPRO ;
 int IDS_MSG_WARNINGTERMINATING ;
 scalar_t__ IDYES ;
 scalar_t__ IsCriticalProcess (scalar_t__) ;
 int LoadStringW (int ,int ,int *,int) ;
 int MB_ICONSTOP ;
 int MB_ICONWARNING ;
 int MB_OK ;
 int MB_TOPMOST ;
 int MB_YESNO ;
 scalar_t__ MessageBoxW (int ,int *,int *,int) ;
 scalar_t__ OpenProcess (int,int ,scalar_t__) ;
 int PROCESS_QUERY_INFORMATION ;
 int PROCESS_TERMINATE ;
 int TerminateProcess (scalar_t__,int) ;
 int hInst ;
 int hMainWnd ;

void ProcessPage_OnEndProcess(void)
{
    DWORD dwProcessId;
    HANDLE hProcess;
    WCHAR szTitle[256];
    WCHAR strErrorText[260];

    dwProcessId = GetSelectedProcessId();

    if (dwProcessId == 0)
        return;

    hProcess = OpenProcess(PROCESS_TERMINATE | PROCESS_QUERY_INFORMATION, FALSE, dwProcessId);


    if (hProcess && IsCriticalProcess(hProcess))
    {
        LoadStringW(hInst, IDS_MSG_UNABLETERMINATEPRO, szTitle, 256);
        LoadStringW(hInst, IDS_MSG_CLOSESYSTEMPROCESS, strErrorText, 256);
        MessageBoxW(hMainWnd, strErrorText, szTitle, MB_OK|MB_ICONWARNING|MB_TOPMOST);
        CloseHandle(hProcess);
        return;
    }


    LoadStringW(hInst, IDS_MSG_WARNINGTERMINATING, strErrorText, 256);
    LoadStringW(hInst, IDS_MSG_TASKMGRWARNING, szTitle, 256);
    if (MessageBoxW(hMainWnd, strErrorText, szTitle, MB_YESNO|MB_ICONWARNING|MB_TOPMOST) != IDYES)
    {
        if (hProcess) CloseHandle(hProcess);
        return;
    }


    if (!hProcess)
    {
        GetLastErrorText(strErrorText, 260);
        LoadStringW(hInst, IDS_MSG_UNABLETERMINATEPRO, szTitle, 256);
        MessageBoxW(hMainWnd, strErrorText, szTitle, MB_OK|MB_ICONSTOP|MB_TOPMOST);
        return;
    }


    if (!TerminateProcess(hProcess, 1))
    {
        GetLastErrorText(strErrorText, 260);
        LoadStringW(hInst, IDS_MSG_UNABLETERMINATEPRO, szTitle, 256);
        MessageBoxW(hMainWnd, strErrorText, szTitle, MB_OK|MB_ICONSTOP|MB_TOPMOST);
    }

    CloseHandle(hProcess);
}
