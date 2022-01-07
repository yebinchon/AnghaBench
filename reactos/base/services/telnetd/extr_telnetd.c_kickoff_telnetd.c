
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cleanup ;
 int CreateSocket () ;
 int ErrorExit (char*) ;
 int SetConsoleCtrlHandler (int ,int) ;
 int StartSocketInterface () ;
 int WSACleanup () ;
 int WaitForConnect () ;
 int bShutdown ;
 int printf (char*) ;

int kickoff_telnetd(void)
{
  printf("Attempting to start Simple TelnetD\n");


  SetConsoleCtrlHandler(Cleanup, 1);

  if (!StartSocketInterface())
    ErrorExit("Unable to start socket interface\n");

  CreateSocket();

  while(!bShutdown) {
    WaitForConnect();
  }

  WSACleanup();
  return 0;
}
