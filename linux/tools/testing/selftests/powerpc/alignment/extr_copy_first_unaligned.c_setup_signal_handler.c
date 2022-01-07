
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_sigaction; } ;
typedef int signal_action ;


 int SA_SIGINFO ;
 int SIGBUS ;
 int memset (struct sigaction*,int ,int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int signal_action_handler ;

void setup_signal_handler(void)
{
 struct sigaction signal_action;

 memset(&signal_action, 0, sizeof(signal_action));
 signal_action.sa_sigaction = signal_action_handler;
 signal_action.sa_flags = SA_SIGINFO;
 sigaction(SIGBUS, &signal_action, ((void*)0));
}
