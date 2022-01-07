
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_sigaction; int sa_flags; } ;


 int EXIT_SUCCESS ;
 int SA_SIGINFO ;
 int SIGTRAP ;
 int raise (int ) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int trap_signal_handler ;

int tm_signal_sigreturn_nt(void)
{
 struct sigaction trap_sa;

 trap_sa.sa_flags = SA_SIGINFO;
 trap_sa.sa_sigaction = trap_signal_handler;

 sigaction(SIGTRAP, &trap_sa, ((void*)0));

 raise(SIGTRAP);

 return EXIT_SUCCESS;
}
