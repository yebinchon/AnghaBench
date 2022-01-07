
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
typedef int sigset_t ;


 int SIGUSR1 ;
 int perror (char*) ;
 int printf_verbose (char*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int test_signal_interrupt_handler ;

__attribute__((used)) static int set_signal_handler(void)
{
 int ret = 0;
 struct sigaction sa;
 sigset_t sigset;

 ret = sigemptyset(&sigset);
 if (ret < 0) {
  perror("sigemptyset");
  return ret;
 }

 sa.sa_handler = test_signal_interrupt_handler;
 sa.sa_mask = sigset;
 sa.sa_flags = 0;
 ret = sigaction(SIGUSR1, &sa, ((void*)0));
 if (ret < 0) {
  perror("sigaction");
  return ret;
 }

 printf_verbose("Signal handler set for SIGUSR1\n");

 return ret;
}
