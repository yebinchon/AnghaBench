
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pipename ;
typedef scalar_t__ pid_t ;
typedef scalar_t__ HANDLE ;


 scalar_t__ CreateNamedPipe (char*,int ,int,int ,int,int,int,int *) ;
 int ERROR ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int PIPE_ACCESS_DUPLEX ;
 int PIPE_READMODE_MESSAGE ;
 int PIPE_TYPE_MESSAGE ;
 int PIPE_UNLIMITED_INSTANCES ;
 int PIPE_WAIT ;
 int ereport (int ,int ) ;
 int errmsg (char*,int,int ) ;
 int snprintf (char*,int,char*,int) ;

HANDLE
pgwin32_create_signal_listener(pid_t pid)
{
 char pipename[128];
 HANDLE pipe;

 snprintf(pipename, sizeof(pipename), "\\\\.\\pipe\\pgsignal_%u", (int) pid);

 pipe = CreateNamedPipe(pipename, PIPE_ACCESS_DUPLEX,
         PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE | PIPE_WAIT,
         PIPE_UNLIMITED_INSTANCES, 16, 16, 1000, ((void*)0));

 if (pipe == INVALID_HANDLE_VALUE)
  ereport(ERROR,
    (errmsg("could not create signal listener pipe for PID %d: error code %lu",
      (int) pid, GetLastError())));

 return pipe;
}
