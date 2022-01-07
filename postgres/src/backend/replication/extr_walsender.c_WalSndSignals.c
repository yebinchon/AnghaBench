
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InitializeTimeouts () ;
 int PostgresSigHupHandler ;
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
 int StatementCancelHandler ;
 int WalSndLastCycleHandler ;
 int die ;
 int pqsignal (int ,int ) ;
 int procsignal_sigusr1_handler ;
 int quickdie ;

void
WalSndSignals(void)
{

 pqsignal(SIGHUP, PostgresSigHupHandler);

 pqsignal(SIGINT, StatementCancelHandler);
 pqsignal(SIGTERM, die);
 pqsignal(SIGQUIT, quickdie);
 InitializeTimeouts();
 pqsignal(SIGPIPE, SIG_IGN);
 pqsignal(SIGUSR1, procsignal_sigusr1_handler);
 pqsignal(SIGUSR2, WalSndLastCycleHandler);



 pqsignal(SIGCHLD, SIG_DFL);
}
