
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * hProcess; int hThread; } ;
struct TYPE_6__ {int cb; } ;
typedef int TCHAR ;
typedef TYPE_1__ STARTUPINFO ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int PARSED_COMMAND ;
typedef int * HANDLE ;


 int ARRAYSIZE (int *) ;
 int CMDLINE_LENGTH ;
 int CloseHandle (int ) ;
 int CreateProcess (int *,int *,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int ErrorMessage (int ,int *) ;
 int GetLastError () ;
 int GetModuleFileName (int *,int *,int ) ;
 int MAX_PATH ;
 int TRUE ;
 int * Unparse (int *,int *,int *) ;
 int _T (char*) ;
 int * _stpcpy (int *,int ) ;
 int _tcscpy (int *,int ) ;
 int error_out_of_memory () ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static HANDLE
ExecuteAsync(PARSED_COMMAND *Cmd)
{
    TCHAR CmdPath[MAX_PATH];
    TCHAR CmdParams[CMDLINE_LENGTH], *ParamsEnd;
    STARTUPINFO stui;
    PROCESS_INFORMATION prci;


    GetModuleFileName(((void*)0), CmdPath, ARRAYSIZE(CmdPath));


    ParamsEnd = _stpcpy(CmdParams, _T("/S/D/C\""));
    ParamsEnd = Unparse(Cmd, ParamsEnd, &CmdParams[CMDLINE_LENGTH - 2]);
    if (!ParamsEnd)
    {
        error_out_of_memory();
        return ((void*)0);
    }
    _tcscpy(ParamsEnd, _T("\""));

    memset(&stui, 0, sizeof stui);
    stui.cb = sizeof(STARTUPINFO);
    if (!CreateProcess(CmdPath, CmdParams, ((void*)0), ((void*)0), TRUE, 0,
                       ((void*)0), ((void*)0), &stui, &prci))
    {
        ErrorMessage(GetLastError(), ((void*)0));
        return ((void*)0);
    }

    CloseHandle(prci.hThread);
    return prci.hProcess;
}
