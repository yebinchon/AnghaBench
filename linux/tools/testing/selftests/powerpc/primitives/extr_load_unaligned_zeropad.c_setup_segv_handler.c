
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_sigaction; } ;
typedef int action ;


 int SA_SIGINFO ;
 int SIGSEGV ;
 int memset (struct sigaction*,int ,int) ;
 int segv_handler ;
 int sigaction (int ,struct sigaction*,int *) ;

__attribute__((used)) static void setup_segv_handler(void)
{
 struct sigaction action;

 memset(&action, 0, sizeof(action));
 action.sa_sigaction = segv_handler;
 action.sa_flags = SA_SIGINFO;
 sigaction(SIGSEGV, &action, ((void*)0));
}
