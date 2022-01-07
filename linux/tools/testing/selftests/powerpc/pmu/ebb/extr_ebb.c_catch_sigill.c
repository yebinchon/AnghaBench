
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGILL ;
 int perror (char*) ;
 scalar_t__ setjmp (int ) ;
 int setjmp_env ;
 scalar_t__ sigaction (int ,int *,int *) ;
 int sigill_action ;

int catch_sigill(void (*func)(void))
{
 if (sigaction(SIGILL, &sigill_action, ((void*)0))) {
  perror("sigaction");
  return 1;
 }

 if (setjmp(setjmp_env) == 0) {
  func();
  return 1;
 }

 return 0;
}
