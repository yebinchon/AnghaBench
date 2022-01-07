
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * GetCommandLineW () ;
 int GetModuleFileNameW (int *,int *,int) ;
 int MAX_PATH ;
 int SetEnvironmentVariableW (char*,char*) ;
 int cr_runproc (int *,int *) ;
 int wcscpy (scalar_t__,char*) ;
 scalar_t__ wcsrchr (int *,char) ;

int wmain(int argc, wchar_t **argv, wchar_t **envp)
{
    wchar_t *cmd;
    wchar_t exe[MAX_PATH];

    cmd = GetCommandLineW();
    GetModuleFileNameW(((void*)0), exe, MAX_PATH);
    wcscpy(wcsrchr(exe, '.') + 1, L"exe");



    SetEnvironmentVariableW(L"_started_from_console", L"yes");

    return cr_runproc(exe, cmd);
}
