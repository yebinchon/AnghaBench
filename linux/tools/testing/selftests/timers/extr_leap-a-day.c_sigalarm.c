
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_sec; int tv_usec; } ;
struct timex {int tai; TYPE_1__ time; scalar_t__ modes; } ;


 int TIME_WAIT ;
 int adjtimex (struct timex*) ;
 int error_found ;
 scalar_t__ next_leap ;
 int printf (char*,...) ;
 int time_state_str (int) ;

void sigalarm(int signo)
{
 struct timex tx;
 int ret;

 tx.modes = 0;
 ret = adjtimex(&tx);

 if (tx.time.tv_sec < next_leap) {
  printf("Error: Early timer expiration! (Should be %ld)\n", next_leap);
  error_found = 1;
  printf("adjtimex: %10ld sec + %6ld us (%i)\t%s\n",
     tx.time.tv_sec,
     tx.time.tv_usec,
     tx.tai,
     time_state_str(ret));
 }
 if (ret != TIME_WAIT) {
  printf("Error: Timer seeing incorrect NTP state? (Should be TIME_WAIT)\n");
  error_found = 1;
  printf("adjtimex: %10ld sec + %6ld us (%i)\t%s\n",
     tx.time.tv_sec,
     tx.time.tv_usec,
     tx.tai,
     time_state_str(ret));
 }
}
