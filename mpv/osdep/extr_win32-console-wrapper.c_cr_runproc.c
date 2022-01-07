
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int si ;
typedef int pi ;
typedef int our_si ;
struct TYPE_7__ {int cb; int hThread; int hProcess; int cbReserved2; int lpReserved2; int dwFlags; void* hStdError; void* hStdOutput; void* hStdInput; } ;
typedef TYPE_1__ STARTUPINFOW ;
typedef TYPE_1__ PROCESS_INFORMATION ;
typedef int DWORD ;


 int CloseHandle (int ) ;
 int CreateProcessW (int *,int *,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_1__*) ;
 int GetExitCodeProcess (int ,int*) ;
 int GetStartupInfoW (TYPE_1__*) ;
 void* GetStdHandle (int ) ;
 int INFINITE ;
 int STARTF_USESTDHANDLES ;
 int STD_ERROR_HANDLE ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int TRUE ;
 int WaitForSingleObject (int ,int ) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int cr_perror (char*) ;

__attribute__((used)) static int cr_runproc(wchar_t *name, wchar_t *cmdline)
{
    STARTUPINFOW si;
    STARTUPINFOW our_si;
    PROCESS_INFORMATION pi;
    DWORD retval = 1;

    ZeroMemory(&si, sizeof(si));
    si.cb = sizeof(si);
    si.hStdInput = GetStdHandle(STD_INPUT_HANDLE);
    si.hStdOutput = GetStdHandle(STD_OUTPUT_HANDLE);
    si.hStdError = GetStdHandle(STD_ERROR_HANDLE);
    si.dwFlags |= STARTF_USESTDHANDLES;


    our_si.cb = sizeof(our_si);
    GetStartupInfoW(&our_si);
    si.lpReserved2 = our_si.lpReserved2;
    si.cbReserved2 = our_si.cbReserved2;

    ZeroMemory(&pi, sizeof(pi));

    if (!CreateProcessW(name, cmdline, ((void*)0), ((void*)0), TRUE, 0,
                        ((void*)0), ((void*)0), &si, &pi)) {

        cr_perror(L"CreateProcess");
    } else {
        WaitForSingleObject(pi.hProcess, INFINITE);
        GetExitCodeProcess(pi.hProcess, &retval);
        CloseHandle(pi.hProcess);
        CloseHandle(pi.hThread);
    }

    return (int)retval;
}
