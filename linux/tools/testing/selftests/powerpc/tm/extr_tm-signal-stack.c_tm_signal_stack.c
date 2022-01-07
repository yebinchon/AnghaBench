
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGSEGV ;
 scalar_t__ SIG_ERR ;
 int SKIP_IF (int) ;
 int exit (int) ;
 int fork () ;
 int have_htm () ;
 scalar_t__ signal (int ,int ) ;
 int signal_segv ;
 int wait (int *) ;

int tm_signal_stack()
{
 int pid;

 SKIP_IF(!have_htm());

 pid = fork();
 if (pid < 0)
  exit(1);

 if (pid) {




  wait(((void*)0));
  return 0;
 }
 if (signal(SIGSEGV, signal_segv) == SIG_ERR)
  exit(1);
 asm volatile("li 1, 0 ;"
       "1:"
       "tbegin.;"
       "beq 1b ;"
       "tsuspend.;"
       "ld 2, 0(1) ;"
       : : : "memory");


 return 1;
}
