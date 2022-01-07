
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InitializeTimeouts () ;
 int PG_SETMASK (int *) ;
 int RegisterTimeout (int ,int ) ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIG_DFL ;
 int SIG_IGN ;
 int STANDBY_DEADLOCK_TIMEOUT ;
 int STANDBY_LOCK_TIMEOUT ;
 int STANDBY_TIMEOUT ;
 int StandbyDeadLockHandler ;
 int StandbyLockTimeoutHandler ;
 int StandbyTimeoutHandler ;
 int StartupProcShutdownHandler ;
 int StartupProcSigHupHandler ;
 int StartupProcSigUsr1Handler ;
 int StartupProcTriggerHandler ;
 int StartupXLOG () ;
 int UnBlockSig ;
 int pqsignal (int ,int ) ;
 int proc_exit (int ) ;
 int startupproc_quickdie ;

void
StartupProcessMain(void)
{



 pqsignal(SIGHUP, StartupProcSigHupHandler);
 pqsignal(SIGINT, SIG_IGN);
 pqsignal(SIGTERM, StartupProcShutdownHandler);
 pqsignal(SIGQUIT, startupproc_quickdie);
 InitializeTimeouts();
 pqsignal(SIGPIPE, SIG_IGN);
 pqsignal(SIGUSR1, StartupProcSigUsr1Handler);
 pqsignal(SIGUSR2, StartupProcTriggerHandler);




 pqsignal(SIGCHLD, SIG_DFL);




 RegisterTimeout(STANDBY_DEADLOCK_TIMEOUT, StandbyDeadLockHandler);
 RegisterTimeout(STANDBY_TIMEOUT, StandbyTimeoutHandler);
 RegisterTimeout(STANDBY_LOCK_TIMEOUT, StandbyLockTimeoutHandler);




 PG_SETMASK(&UnBlockSig);




 StartupXLOG();





 proc_exit(0);
}
