
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int strDebugger ;
typedef int si ;
typedef int pi ;
typedef int WCHAR ;
struct TYPE_6__ {int cb; int hProcess; int hThread; } ;
typedef TYPE_1__ STARTUPINFOW ;
typedef TYPE_1__ PROCESS_INFORMATION ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int ARRAYSIZE (int *) ;
 int CloseHandle (int ) ;
 int CreateEventW (int *,int ,int ,int *) ;
 int CreateProcessW (int *,int *,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetLastErrorText (int *,int ) ;
 scalar_t__ GetSelectedProcessId () ;
 int HKEY_LOCAL_MACHINE ;
 int IDS_MSG_TASKMGRWARNING ;
 int IDS_MSG_UNABLEDEBUGPROCESS ;
 int IDS_MSG_WARNINGDEBUG ;
 scalar_t__ IDYES ;
 int KEY_QUERY_VALUE ;
 int LoadStringW (int ,int ,int *,int ) ;
 int MB_ICONSTOP ;
 int MB_ICONWARNING ;
 int MB_OK ;
 int MB_YESNO ;
 scalar_t__ MessageBoxW (int ,int *,int *,int) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int *,int ,scalar_t__*) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int hInst ;
 int hMainWnd ;
 int wsprintfW (int *,int *,scalar_t__,int ) ;

void ProcessPage_OnDebug(void)
{
    DWORD dwProcessId;
    WCHAR strErrorText[260];
    HKEY hKey;
    WCHAR strDebugPath[260];
    WCHAR strDebugger[260];
    DWORD dwDebuggerSize;
    PROCESS_INFORMATION pi;
    STARTUPINFOW si;
    HANDLE hDebugEvent;
    WCHAR szTemp[256];
    WCHAR szTempA[256];

    dwProcessId = GetSelectedProcessId();

    if (dwProcessId == 0)
        return;

    LoadStringW(hInst, IDS_MSG_WARNINGDEBUG, szTemp, ARRAYSIZE(szTemp));
    LoadStringW(hInst, IDS_MSG_TASKMGRWARNING, szTempA, ARRAYSIZE(szTempA));

    if (MessageBoxW(hMainWnd, szTemp, szTempA, MB_YESNO | MB_ICONWARNING) != IDYES)
    {
        GetLastErrorText(strErrorText, ARRAYSIZE(strErrorText));
        LoadStringW(hInst, IDS_MSG_UNABLEDEBUGPROCESS, szTemp, ARRAYSIZE(szTemp));
        MessageBoxW(hMainWnd, strErrorText, szTemp, MB_OK | MB_ICONSTOP);
        return;
    }

    if (RegOpenKeyExW(HKEY_LOCAL_MACHINE, L"Software\\Microsoft\\Windows NT\\CurrentVersion\\AeDebug", 0, KEY_QUERY_VALUE, &hKey) != ERROR_SUCCESS)
    {
        GetLastErrorText(strErrorText, ARRAYSIZE(strErrorText));
        LoadStringW(hInst, IDS_MSG_UNABLEDEBUGPROCESS, szTemp, ARRAYSIZE(szTemp));
        MessageBoxW(hMainWnd, strErrorText, szTemp, MB_OK | MB_ICONSTOP);
        return;
    }

    dwDebuggerSize = sizeof(strDebugger);
    if (RegQueryValueExW(hKey, L"Debugger", ((void*)0), ((void*)0), (LPBYTE)strDebugger, &dwDebuggerSize) != ERROR_SUCCESS)
    {
        GetLastErrorText(strErrorText, ARRAYSIZE(strErrorText));
        LoadStringW(hInst, IDS_MSG_UNABLEDEBUGPROCESS, szTemp, ARRAYSIZE(szTemp));
        MessageBoxW(hMainWnd, strErrorText, szTemp, MB_OK | MB_ICONSTOP);
        RegCloseKey(hKey);
        return;
    }

    RegCloseKey(hKey);

    hDebugEvent = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
    if (!hDebugEvent)
    {
        GetLastErrorText(strErrorText, ARRAYSIZE(strErrorText));
        LoadStringW(hInst, IDS_MSG_UNABLEDEBUGPROCESS, szTemp, ARRAYSIZE(szTemp));
        MessageBoxW(hMainWnd, strErrorText, szTemp, MB_OK | MB_ICONSTOP);
        return;
    }

    wsprintfW(strDebugPath, strDebugger, dwProcessId, hDebugEvent);

    ZeroMemory(&pi, sizeof(pi));
    ZeroMemory(&si, sizeof(si));
    si.cb = sizeof(si);
    if (!CreateProcessW(((void*)0), strDebugPath, ((void*)0), ((void*)0), FALSE, 0, ((void*)0), ((void*)0), &si, &pi))
    {
        GetLastErrorText(strErrorText, ARRAYSIZE(strErrorText));
        LoadStringW(hInst, IDS_MSG_UNABLEDEBUGPROCESS, szTemp, ARRAYSIZE(szTemp));
        MessageBoxW(hMainWnd, strErrorText, szTemp, MB_OK | MB_ICONSTOP);
    }
    else
    {
        CloseHandle(pi.hThread);
        CloseHandle(pi.hProcess);
    }

    CloseHandle(hDebugEvent);
}
