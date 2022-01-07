
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int CLOCK_REALTIME ;
 int NSEC_PER_SEC ;
 int TIMER_ABSTIME ;
 int clock_gettime (int ,struct timespec*) ;
 int clock_nanosleep (int ,int ,struct timespec*,int *) ;
 int error_found ;
 int in_order (struct timespec,struct timespec) ;
 int printf (char*) ;
 struct timespec timespec_add (struct timespec,int) ;

void test_hrtimer_failure(void)
{
 struct timespec now, target;

 clock_gettime(CLOCK_REALTIME, &now);
 target = timespec_add(now, NSEC_PER_SEC/2);
 clock_nanosleep(CLOCK_REALTIME, TIMER_ABSTIME, &target, ((void*)0));
 clock_gettime(CLOCK_REALTIME, &now);

 if (!in_order(target, now)) {
  printf("ERROR: hrtimer early expiration failure observed.\n");
  error_found = 1;
 }
}
