
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_2__ {int tv_sec; } ;
struct itimerval {TYPE_1__ it_value; } ;


 int DELAY ;
 int ITIMER_PROF ;
 int ITIMER_REAL ;
 int ITIMER_VIRTUAL ;
 int SIGALRM ;
 int SIGPROF ;
 int SIGVTALRM ;
 int check_diff (struct timeval,struct timeval) ;
 scalar_t__ done ;
 int fflush (int ) ;
 int gettimeofday (struct timeval*,int *) ;
 int idle_loop () ;
 int kernel_loop () ;
 int perror (char*) ;
 int printf (char*) ;
 int setitimer (int,struct itimerval*,int *) ;
 int sig_handler ;
 int signal (int ,int ) ;
 int stdout ;
 int user_loop () ;

__attribute__((used)) static int check_itimer(int which)
{
 int err;
 struct timeval start, end;
 struct itimerval val = {
  .it_value.tv_sec = DELAY,
 };

 printf("Check itimer ");

 if (which == ITIMER_VIRTUAL)
  printf("virtual... ");
 else if (which == ITIMER_PROF)
  printf("prof... ");
 else if (which == ITIMER_REAL)
  printf("real... ");

 fflush(stdout);

 done = 0;

 if (which == ITIMER_VIRTUAL)
  signal(SIGVTALRM, sig_handler);
 else if (which == ITIMER_PROF)
  signal(SIGPROF, sig_handler);
 else if (which == ITIMER_REAL)
  signal(SIGALRM, sig_handler);

 err = gettimeofday(&start, ((void*)0));
 if (err < 0) {
  perror("Can't call gettimeofday()\n");
  return -1;
 }

 err = setitimer(which, &val, ((void*)0));
 if (err < 0) {
  perror("Can't set timer\n");
  return -1;
 }

 if (which == ITIMER_VIRTUAL)
  user_loop();
 else if (which == ITIMER_PROF)
  kernel_loop();
 else if (which == ITIMER_REAL)
  idle_loop();

 err = gettimeofday(&end, ((void*)0));
 if (err < 0) {
  perror("Can't call gettimeofday()\n");
  return -1;
 }

 if (!check_diff(start, end))
  printf("[OK]\n");
 else
  printf("[FAIL]\n");

 return 0;
}
