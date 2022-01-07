
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int DUPLICATE_SAME_ACCESS ;
 scalar_t__ DuplicateHandle (int ,int ,int ,int *,int ,int ,int ) ;
 int FATAL ;
 int F_SETFL ;
 int GetCurrentProcess () ;
 int GetLastError () ;
 scalar_t__ MyProcPid ;
 int O_NONBLOCK ;
 size_t POSTMASTER_FD_WATCH ;
 int PostmasterHandle ;
 scalar_t__ PostmasterPid ;
 int TRUE ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errcode_for_socket_access () ;
 int errmsg_internal (char*,...) ;
 int fcntl (int ,int ,int ) ;
 scalar_t__ pipe (int *) ;
 int * postmaster_alive_fds ;

__attribute__((used)) static void
InitPostmasterDeathWatchHandle(void)
{
 Assert(MyProcPid == PostmasterPid);
 if (pipe(postmaster_alive_fds) < 0)
  ereport(FATAL,
    (errcode_for_file_access(),
     errmsg_internal("could not create pipe to monitor postmaster death: %m")));





 if (fcntl(postmaster_alive_fds[POSTMASTER_FD_WATCH], F_SETFL, O_NONBLOCK) == -1)
  ereport(FATAL,
    (errcode_for_socket_access(),
     errmsg_internal("could not set postmaster death monitoring pipe to nonblocking mode: %m")));
}
