
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_sigaction; int sa_flags; } ;


 int EXIT_FAILURE ;
 int SA_SIGINFO ;
 int SIGSEGV ;
 int exit (int ) ;
 int perror (char*) ;
 int segv_handler ;
 int sigaction (int ,struct sigaction*,int *) ;

__attribute__((used)) static void set_segv_handler(void)
{
 struct sigaction sa;

 sa.sa_flags = SA_SIGINFO;
 sa.sa_sigaction = segv_handler;

 if (sigaction(SIGSEGV, &sa, ((void*)0)) == -1) {
  perror("sigaction");
  exit(EXIT_FAILURE);
 }
}
