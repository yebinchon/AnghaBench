
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Type; struct TYPE_4__* Next; struct TYPE_4__* Subcommands; } ;
typedef TYPE_1__ PARSED_COMMAND ;
typedef int INT ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ C_PIPE ;
 int ChildProcessRunningLock ;
 int CloseHandle (int *) ;
 int CreatePipe (int **,int **,int *,int ) ;
 int EnterCriticalSection (int *) ;
 int * ExecuteAsync (TYPE_1__*) ;
 int GetExitCodeProcess (int *,scalar_t__*) ;
 int * GetStdHandle (int ) ;
 int HANDLE_FLAG_INHERIT ;
 int INFINITE ;
 int LeaveCriticalSection (int *) ;
 int MAXIMUM_WAIT_OBJECTS ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int SetHandleInformation (int *,int ,int ) ;
 int SetStdHandle (int ,int *) ;
 int TRUE ;
 int TerminateProcess (int *,int ) ;
 int WaitForMultipleObjects (int,int **,int ,int ) ;
 int _T (char*) ;
 int error_no_pipe () ;
 int error_too_many_parameters (int ) ;
 int nErrorLevel ;

__attribute__((used)) static INT
ExecutePipeline(PARSED_COMMAND *Cmd)
{
    return nErrorLevel;
}
