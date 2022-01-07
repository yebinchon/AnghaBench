
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucontext_t ;
struct sigaction {int sa_sigaction; void* sa_flags; } ;
typedef scalar_t__ pid_t ;


 int ARG_FOREVER ;
 int ARG_MESS_WITH_TM_AT ;
 void* SA_SIGINFO ;
 int SIGSEGV ;
 int SIGUSR1 ;
 int args ;
 int count_max ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int free (int *) ;
 scalar_t__ getpid () ;
 int * malloc (int) ;
 int mess_with_tm () ;
 scalar_t__ one_in_chance (int) ;
 int raise (int ) ;
 int seg_signal_handler ;
 int sigaction (int ,struct sigaction*,int *) ;
 int srand (scalar_t__) ;
 scalar_t__ time (int *) ;
 int * tmp_uc ;
 int trap_signal_handler ;
 int waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static void *sigfuz_test(void *thrid)
{
 struct sigaction trap_sa, seg_sa;
 int ret, i = 0;
 pid_t t;

 tmp_uc = malloc(sizeof(ucontext_t));


 trap_sa.sa_flags = SA_SIGINFO;
 trap_sa.sa_sigaction = trap_signal_handler;


 seg_sa.sa_flags = SA_SIGINFO;
 seg_sa.sa_sigaction = seg_signal_handler;


 sigaction(SIGUSR1, &trap_sa, ((void*)0));


 sigaction(SIGSEGV, &seg_sa, ((void*)0));

 while (i < count_max) {
  t = fork();

  if (t == 0) {

   srand(time(((void*)0)) + getpid());
   if (args & ARG_MESS_WITH_TM_AT) {
    if (one_in_chance(2))
     mess_with_tm();
   }
   raise(SIGUSR1);
   exit(0);
  } else {
   waitpid(t, &ret, 0);
  }
  if (!(args & ARG_FOREVER))
   i++;
 }


 if (tmp_uc) {
  free(tmp_uc);
  tmp_uc = ((void*)0);
 }

 return ((void*)0);
}
