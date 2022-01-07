
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ClientAuthInProgress ;
 int MyProcPid ;
 int SIGINT ;
 int SIGTERM ;
 int kill (int ,int) ;

__attribute__((used)) static void
StatementTimeoutHandler(void)
{
 int sig = SIGINT;





 if (ClientAuthInProgress)
  sig = SIGTERM;





 kill(MyProcPid, sig);
}
