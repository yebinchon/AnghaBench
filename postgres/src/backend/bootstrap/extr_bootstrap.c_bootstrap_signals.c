
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int IsUnderPostmaster ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIG_DFL ;
 int pqsignal (int ,int ) ;

__attribute__((used)) static void
bootstrap_signals(void)
{
 Assert(!IsUnderPostmaster);






 pqsignal(SIGHUP, SIG_DFL);
 pqsignal(SIGINT, SIG_DFL);
 pqsignal(SIGTERM, SIG_DFL);
 pqsignal(SIGQUIT, SIG_DFL);
}
