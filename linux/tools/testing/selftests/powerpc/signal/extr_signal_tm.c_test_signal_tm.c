
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;


 int FAIL_IF (int) ;
 int MAX_ATTEMPT ;
 int SIGALRM ;
 int SIGUSR1 ;
 int SKIP_IF (int) ;
 int TIMEOUT ;
 int __builtin_get_texasr () ;
 int __builtin_get_tfiar () ;
 int alarm (int ) ;
 int exit (int) ;
 int fail ;
 int fprintf (int ,char*,int,int,long,long) ;
 int getpid () ;
 int have_htm () ;
 int perror (char*) ;
 int printf (char*,int ,int ) ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int signal_handler ;
 scalar_t__ signaled ;
 int stderr ;
 int tcheck_transactional () ;
 long tm_signal_self (int ,int ,long*) ;

__attribute__((used)) static int test_signal_tm()
{
 int i;
 struct sigaction act;

 act.sa_handler = signal_handler;
 act.sa_flags = 0;
 sigemptyset(&act.sa_mask);
 if (sigaction(SIGUSR1, &act, ((void*)0)) < 0) {
  perror("sigaction SIGUSR1");
  exit(1);
 }
 if (sigaction(SIGALRM, &act, ((void*)0)) < 0) {
  perror("sigaction SIGALRM");
  exit(1);
 }

 SKIP_IF(!have_htm());

 for (i = 0; i < MAX_ATTEMPT; i++) {




  long ret = 0xdead;
  long rc = 0xbeef;

  alarm(0);
  signaled = 0;
  alarm(TIMEOUT);
  FAIL_IF(tcheck_transactional());
  rc = tm_signal_self(getpid(), SIGUSR1, &ret);
  if (ret == 0xdead)







   continue;

  if (rc || ret) {

   printf("TEXASR 0x%016lx, TFIAR 0x%016lx\n",
     __builtin_get_texasr(), __builtin_get_tfiar());
   fprintf(stderr, "(%d) Fail reason: %d rc=0x%lx ret=0x%lx\n",
     i, fail, rc, ret);
   FAIL_IF(ret);
  }
  while(!signaled && !fail)
   asm volatile("": : :"memory");
  if (!signaled) {
   fprintf(stderr, "(%d) Fail reason: %d rc=0x%lx ret=0x%lx\n",
     i, fail, rc, ret);
   FAIL_IF(fail);
  }
 }

 return 0;
}
