
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int alarm (int) ;
 int iterations ;
 int sched_yield () ;
 int sigalrm_handler ;
 int signal (int ,int ) ;
 int touch () ;

__attribute__((used)) static void *yield_thread1(void *arg)
{
 signal(SIGALRM, sigalrm_handler);
 alarm(1);

 while (1) {
  sched_yield();
  touch();

  iterations += 2;
 }

 return ((void*)0);
}
