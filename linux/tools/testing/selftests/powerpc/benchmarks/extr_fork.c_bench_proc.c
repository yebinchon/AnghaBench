
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int alarm (int) ;
 int bench_fork () ;
 int bench_thread () ;
 int bench_vfork () ;
 scalar_t__ do_fork ;
 scalar_t__ do_vfork ;
 int sigalrm_handler ;
 int signal (int ,int ) ;

__attribute__((used)) static void *bench_proc(void *arg)
{
 signal(SIGALRM, sigalrm_handler);
 alarm(1);

 if (do_fork)
  bench_fork();
 else if (do_vfork)
  bench_vfork();
 else
  bench_thread();

 return ((void*)0);
}
