
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR1 ;
 int fail ;
 int signaled ;

__attribute__((used)) static void signal_handler(int sig)
{
 if (sig == SIGUSR1)
  signaled = 1;
 else
  fail = 1;
}
