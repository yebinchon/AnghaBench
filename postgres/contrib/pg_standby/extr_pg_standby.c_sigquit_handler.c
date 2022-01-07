
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int SIG_DFL ;
 int getpid () ;
 int kill (int ,int ) ;
 int pqsignal (int ,int ) ;

__attribute__((used)) static void
sigquit_handler(int sig)
{
 pqsignal(SIGINT, SIG_DFL);
 kill(getpid(), SIGINT);
}
