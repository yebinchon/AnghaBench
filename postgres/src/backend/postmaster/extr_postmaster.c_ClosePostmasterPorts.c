
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CloseHandle (int) ;
 int DNSServiceRefSockFD (scalar_t__) ;
 int FATAL ;
 scalar_t__* ListenSocket ;
 int MAXLISTEN ;
 scalar_t__ PGINVALID_SOCKET ;
 size_t POSTMASTER_FD_OWN ;
 int StreamClose (scalar_t__) ;
 scalar_t__ bonjour_sdref ;
 scalar_t__ close (int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg_internal (char*) ;
 int* postmaster_alive_fds ;
 int* syslogPipe ;

void
ClosePostmasterPorts(bool am_syslogger)
{
 int i;
 if (close(postmaster_alive_fds[POSTMASTER_FD_OWN]) != 0)
  ereport(FATAL,
    (errcode_for_file_access(),
     errmsg_internal("could not close postmaster death monitoring pipe in child process: %m")));
 postmaster_alive_fds[POSTMASTER_FD_OWN] = -1;



 for (i = 0; i < MAXLISTEN; i++)
 {
  if (ListenSocket[i] != PGINVALID_SOCKET)
  {
   StreamClose(ListenSocket[i]);
   ListenSocket[i] = PGINVALID_SOCKET;
  }
 }


 if (!am_syslogger)
 {

  if (syslogPipe[0] >= 0)
   close(syslogPipe[0]);
  syslogPipe[0] = -1;





 }






}
