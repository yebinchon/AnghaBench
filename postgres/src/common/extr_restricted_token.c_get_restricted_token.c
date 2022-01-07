
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pi ;
struct TYPE_4__ {int hProcess; int hThread; } ;
typedef TYPE_1__ PROCESS_INFORMATION ;
typedef int HANDLE ;
typedef int DWORD ;


 int CloseHandle (int ) ;
 int CreateRestrictedProcess (char*,TYPE_1__*) ;
 int GetCommandLine () ;
 int GetExitCodeProcess (int ,int*) ;
 int GetLastError () ;
 int INFINITE ;
 int WaitForSingleObject (int ,int ) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int exit (int) ;
 int * getenv (char*) ;
 int pg_log_error (char*,int ) ;
 char* pg_strdup (int ) ;
 int putenv (char*) ;
 int * restrict_env ;
 scalar_t__ strcmp (int *,char*) ;

void
get_restricted_token(void)
{
}
