
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int si ;
typedef int pi ;
typedef int WCHAR ;
struct TYPE_6__ {int cb; int hThread; int hProcess; int wShowWindow; int dwFlags; } ;
typedef TYPE_1__ STARTUPINFOW ;
typedef TYPE_1__ PROCESS_INFORMATION ;
typedef int LPCWSTR ;
typedef int HANDLE ;
typedef scalar_t__ BOOL ;


 int ARRAYSIZE (int *) ;
 int CloseHandle (int ) ;
 scalar_t__ CreateProcessAsUserW (int ,int *,int *,int *,int *,scalar_t__,int ,int *,int *,TYPE_1__*,TYPE_1__*) ;
 int DPRINT (char*,int ) ;
 scalar_t__ DuplicateTokenEx (int ,int ,int *,int ,int ,int *) ;
 int ExpandEnvironmentStringsW (int ,int *,int ) ;
 scalar_t__ FALSE ;
 int GetCurrentProcess () ;
 int GetLastError () ;
 int MAX_PATH ;
 scalar_t__ OpenProcessToken (int ,int,int *) ;
 int STARTF_USESHOWWINDOW ;
 int SW_SHOWNORMAL ;
 int SecurityIdentification ;
 int TOKEN_ALL_ACCESS ;
 int TOKEN_DUPLICATE ;
 int TOKEN_QUERY ;
 scalar_t__ TRUE ;
 int TokenPrimary ;
 int ZeroMemory (TYPE_1__*,int) ;

BOOL LaunchProcess(LPCWSTR lpProcessName)
{
    STARTUPINFOW si;
    PROCESS_INFORMATION pi;
    HANDLE hUserToken, hProcessToken;
    BOOL bSuccess;
    WCHAR ExpandedCmdLine[MAX_PATH];


    ExpandEnvironmentStringsW(lpProcessName, ExpandedCmdLine, ARRAYSIZE(ExpandedCmdLine));

    ZeroMemory(&pi, sizeof(pi));
    ZeroMemory(&si, sizeof(si));
    si.cb = sizeof(si);
    si.dwFlags = STARTF_USESHOWWINDOW;
    si.wShowWindow = SW_SHOWNORMAL;


    bSuccess = OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY | TOKEN_DUPLICATE, &hUserToken);
    if (!bSuccess)
    {
        DPRINT("OpenProcessToken() failed with error -> %lu\n", GetLastError());
        return FALSE;
    }


    bSuccess = DuplicateTokenEx(hUserToken, TOKEN_ALL_ACCESS, ((void*)0), SecurityIdentification, TokenPrimary, &hProcessToken);
    if (!bSuccess)
    {
        DPRINT("DuplicateTokenEx() failed with error -> %lu\n", GetLastError());
        CloseHandle(hUserToken);
        return FALSE;
    }


    bSuccess = CreateProcessAsUserW(hProcessToken,
                                    ((void*)0),
                                    ExpandedCmdLine,
                                    ((void*)0),
                                    ((void*)0),
                                    FALSE,
                                    0,
                                    ((void*)0),
                                    ((void*)0),
                                    &si,
                                    &pi);

    if (!bSuccess)
    {
        DPRINT("CreateProcessAsUserW() failed with error -> %lu\n", GetLastError());
        CloseHandle(hUserToken);
        CloseHandle(hProcessToken);
        return FALSE;
    }

    CloseHandle(pi.hProcess);
    CloseHandle(pi.hThread);
    CloseHandle(hUserToken);
    CloseHandle(hProcessToken);
    return TRUE;
}
