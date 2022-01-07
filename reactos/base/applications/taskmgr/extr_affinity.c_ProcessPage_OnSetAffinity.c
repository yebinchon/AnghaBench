
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szTitle ;
typedef int strErrorText ;
typedef int WCHAR ;
typedef scalar_t__ DWORD ;


 int AffinityDialogWndProc ;
 int CloseHandle (int *) ;
 int DialogBoxW (int ,int ,int ,int ) ;
 int FALSE ;
 int GetLastErrorText (int *,int) ;
 scalar_t__ GetSelectedProcessId () ;
 int IDD_AFFINITY_DIALOG ;
 int IDS_MSG_ACCESSPROCESSAFF ;
 int LoadStringW (int ,int ,int *,int) ;
 int MAKEINTRESOURCEW (int ) ;
 int MB_ICONSTOP ;
 int MB_OK ;
 int MessageBoxW (int ,int *,int *,int) ;
 int * OpenProcess (int,int ,scalar_t__) ;
 int PROCESS_QUERY_INFORMATION ;
 int PROCESS_SET_INFORMATION ;
 int hInst ;
 int hMainWnd ;
 int * hProcessAffinityHandle ;

void ProcessPage_OnSetAffinity(void)
{
    DWORD dwProcessId;
    WCHAR strErrorText[260];
    WCHAR szTitle[256];

    dwProcessId = GetSelectedProcessId();

    if (dwProcessId == 0)
        return;

    hProcessAffinityHandle = OpenProcess(PROCESS_QUERY_INFORMATION|PROCESS_SET_INFORMATION, FALSE, dwProcessId);
    if (!hProcessAffinityHandle) {
        GetLastErrorText(strErrorText, sizeof(strErrorText) / sizeof(WCHAR));
        LoadStringW(hInst, IDS_MSG_ACCESSPROCESSAFF, szTitle, sizeof(szTitle) / sizeof(WCHAR));
        MessageBoxW(hMainWnd, strErrorText, szTitle, MB_OK|MB_ICONSTOP);
        return;
    }
    DialogBoxW(hInst, MAKEINTRESOURCEW(IDD_AFFINITY_DIALOG), hMainWnd, AffinityDialogWndProc);
    if (hProcessAffinityHandle) {
        CloseHandle(hProcessAffinityHandle);
        hProcessAffinityHandle = ((void*)0);
    }
}
