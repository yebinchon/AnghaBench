
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_PROCESS_CPUTIME_ID ;
 int CLOCK_THREAD_CPUTIME_ID ;
 int ITIMER_PROF ;
 int ITIMER_REAL ;
 int ITIMER_VIRTUAL ;
 scalar_t__ check_itimer (int ) ;
 scalar_t__ check_timer_create (int ) ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int printf (char*) ;

int main(int argc, char **argv)
{
 printf("Testing posix timers. False negative may happen on CPU execution \n");
 printf("based timers if other threads run on the CPU...\n");

 if (check_itimer(ITIMER_VIRTUAL) < 0)
  return ksft_exit_fail();

 if (check_itimer(ITIMER_PROF) < 0)
  return ksft_exit_fail();

 if (check_itimer(ITIMER_REAL) < 0)
  return ksft_exit_fail();

 if (check_timer_create(CLOCK_THREAD_CPUTIME_ID) < 0)
  return ksft_exit_fail();
 if (check_timer_create(CLOCK_PROCESS_CPUTIME_ID) < 0)
  return ksft_exit_fail();

 return ksft_exit_pass();
}
