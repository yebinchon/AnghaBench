
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FUTEX_WAIT ;
 int FUTEX_WAKE ;
 int SYS_futex ;
 int do_remote_base () ;
 int errx (int,char*) ;
 int ftx ;
 int load_gs () ;
 int syscall (int ,int*,int ,int ,int *,int *,int ) ;

__attribute__((used)) static void *threadproc(void *ctx)
{
 while (1) {
  while (ftx == 0)
   syscall(SYS_futex, &ftx, FUTEX_WAIT, 0, ((void*)0), ((void*)0), 0);
  if (ftx == 3)
   return ((void*)0);

  if (ftx == 1) {
   do_remote_base();
  } else if (ftx == 2) {





   load_gs();
   asm volatile ("mov %0, %%gs" : : "rm" ((unsigned short)0));
  } else {
   errx(1, "helper thread got bad command");
  }

  ftx = 0;
  syscall(SYS_futex, &ftx, FUTEX_WAKE, 0, ((void*)0), ((void*)0), 0);
 }
}
