
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR1 ;
 int alarm (int) ;
 unsigned long iterations ;
 unsigned long iterations_prev ;
 int kill (int ,int ) ;
 int printf (char*,unsigned long) ;
 scalar_t__ timeout ;

__attribute__((used)) static void sigalrm_handler(int junk)
{
 unsigned long i = iterations;

 printf("%ld\n", i - iterations_prev);
 iterations_prev = i;

 if (--timeout == 0)
  kill(0, SIGUSR1);

 alarm(1);
}
