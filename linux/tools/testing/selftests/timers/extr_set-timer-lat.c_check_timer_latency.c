
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UNRESONABLE_LATENCY ;
 int describe_timer (int,int) ;
 scalar_t__ max_latency_ns ;
 int printf (char*,...) ;
 int timer_fired_early ;

int check_timer_latency(int flags, int interval)
{
 int err = 0;

 describe_timer(flags, interval);
 printf("timer fired early: %7d : ", timer_fired_early);
 if (!timer_fired_early) {
  printf("[OK]\n");
 } else {
  printf("[FAILED]\n");
  err = -1;
 }

 describe_timer(flags, interval);
 printf("max latency: %10lld ns : ", max_latency_ns);

 if (max_latency_ns < UNRESONABLE_LATENCY) {
  printf("[OK]\n");
 } else {
  printf("[FAILED]\n");
  err = -1;
 }
 return err;
}
