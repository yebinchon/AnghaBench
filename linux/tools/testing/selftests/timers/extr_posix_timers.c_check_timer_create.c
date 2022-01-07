
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int timer_t ;
struct timeval {int dummy; } ;
struct TYPE_2__ {int tv_sec; } ;
struct itimerspec {TYPE_1__ it_value; } ;


 int CLOCK_PROCESS_CPUTIME_ID ;
 int CLOCK_THREAD_CPUTIME_ID ;
 int DELAY ;
 int SIGALRM ;
 int check_diff (struct timeval,struct timeval) ;
 scalar_t__ done ;
 int fflush (int ) ;
 int gettimeofday (struct timeval*,int *) ;
 int perror (char*) ;
 int printf (char*) ;
 int sig_handler ;
 int signal (int ,int ) ;
 int stdout ;
 int timer_create (int,int *,int *) ;
 int timer_settime (int ,int ,struct itimerspec*,int *) ;
 int user_loop () ;

__attribute__((used)) static int check_timer_create(int which)
{
 int err;
 timer_t id;
 struct timeval start, end;
 struct itimerspec val = {
  .it_value.tv_sec = DELAY,
 };

 printf("Check timer_create() ");
 if (which == CLOCK_THREAD_CPUTIME_ID) {
  printf("per thread... ");
 } else if (which == CLOCK_PROCESS_CPUTIME_ID) {
  printf("per process... ");
 }
 fflush(stdout);

 done = 0;
 err = timer_create(which, ((void*)0), &id);
 if (err < 0) {
  perror("Can't create timer\n");
  return -1;
 }
 signal(SIGALRM, sig_handler);

 err = gettimeofday(&start, ((void*)0));
 if (err < 0) {
  perror("Can't call gettimeofday()\n");
  return -1;
 }

 err = timer_settime(id, 0, &val, ((void*)0));
 if (err < 0) {
  perror("Can't set timer\n");
  return -1;
 }

 user_loop();

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
