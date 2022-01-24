#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  strDebugger ;
typedef  int /*<<< orphan*/  si ;
typedef  int /*<<< orphan*/  pi ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int cb; int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; } ;
typedef  TYPE_1__ STARTUPINFOW ;
typedef  TYPE_1__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  IDS_MSG_TASKMGRWARNING ; 
 int /*<<< orphan*/  IDS_MSG_UNABLEDEBUGPROCESS ; 
 int /*<<< orphan*/  IDS_MSG_WARNINGDEBUG ; 
 scalar_t__ IDYES ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MB_ICONSTOP ; 
 int MB_ICONWARNING ; 
 int MB_OK ; 
 int MB_YESNO ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  hMainWnd ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC13(void)
{
    DWORD                dwProcessId;
    WCHAR                strErrorText[260];
    HKEY                 hKey;
    WCHAR                strDebugPath[260];
    WCHAR                strDebugger[260];
    DWORD                dwDebuggerSize;
    PROCESS_INFORMATION  pi;
    STARTUPINFOW         si;
    HANDLE               hDebugEvent;
    WCHAR                szTemp[256];
    WCHAR                szTempA[256];

    dwProcessId = FUNC5();

    if (dwProcessId == 0)
        return;

    FUNC6(hInst, IDS_MSG_WARNINGDEBUG, szTemp, FUNC0(szTemp));
    FUNC6(hInst, IDS_MSG_TASKMGRWARNING, szTempA, FUNC0(szTempA));

    if (FUNC7(hMainWnd, szTemp, szTempA, MB_YESNO | MB_ICONWARNING) != IDYES)
    {
        FUNC4(strErrorText, FUNC0(strErrorText));
        FUNC6(hInst, IDS_MSG_UNABLEDEBUGPROCESS, szTemp, FUNC0(szTemp));
        FUNC7(hMainWnd, strErrorText, szTemp, MB_OK | MB_ICONSTOP);
        return;
    }

    if (FUNC9(HKEY_LOCAL_MACHINE, L"Software\\Microsoft\\Windows NT\\CurrentVersion\\AeDebug", 0, KEY_QUERY_VALUE, &hKey) != ERROR_SUCCESS)
    {
        FUNC4(strErrorText, FUNC0(strErrorText));
        FUNC6(hInst, IDS_MSG_UNABLEDEBUGPROCESS, szTemp, FUNC0(szTemp));
        FUNC7(hMainWnd, strErrorText, szTemp, MB_OK | MB_ICONSTOP);
        return;
    }

    dwDebuggerSize = sizeof(strDebugger);
    if (FUNC10(hKey, L"Debugger", NULL, NULL, (LPBYTE)strDebugger, &dwDebuggerSize) != ERROR_SUCCESS)
    {
        FUNC4(strErrorText, FUNC0(strErrorText));
        FUNC6(hInst, IDS_MSG_UNABLEDEBUGPROCESS, szTemp, FUNC0(szTemp));
        FUNC7(hMainWnd, strErrorText, szTemp, MB_OK | MB_ICONSTOP);
        FUNC8(hKey);
        return;
    }

    FUNC8(hKey);

    hDebugEvent = FUNC2(NULL, FALSE, FALSE, NULL);
    if (!hDebugEvent)
    {
        FUNC4(strErrorText, FUNC0(strErrorText));
        FUNC6(hInst, IDS_MSG_UNABLEDEBUGPROCESS, szTemp, FUNC0(szTemp));
        FUNC7(hMainWnd, strErrorText, szTemp, MB_OK | MB_ICONSTOP);
        return;
    }

    FUNC12(strDebugPath, strDebugger, dwProcessId, hDebugEvent);

    FUNC11(&pi, sizeof(pi));
    FUNC11(&si, sizeof(si));
    si.cb = sizeof(si);
    if (!FUNC3(NULL, strDebugPath, NULL, NULL, FALSE, 0, NULL, NULL, &si, &pi))
    {
        FUNC4(strErrorText, FUNC0(strErrorText));
        FUNC6(hInst, IDS_MSG_UNABLEDEBUGPROCESS, szTemp, FUNC0(szTemp));
        FUNC7(hMainWnd, strErrorText, szTemp, MB_OK | MB_ICONSTOP);
    }
    else
    {
        FUNC1(pi.hThread);
        FUNC1(pi.hProcess);
    }

    FUNC1(hDebugEvent);
}