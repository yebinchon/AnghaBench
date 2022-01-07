
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {int tv_sec; } ;
struct timex {int status; scalar_t__ modes; TYPE_1__ time; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct timespec {int tv_sec; } ;


 scalar_t__ ADJ_STATUS ;
 int CLOCK_REALTIME ;
 int SIGINT ;
 int SIGKILL ;
 int STA_INS ;
 int adjtimex (struct timex*) ;
 int clear_time_state () ;
 int clock_gettime (int ,struct timespec*) ;
 int fflush (int ) ;
 int handler ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int printf (char*) ;
 int setbuf (int ,int *) ;
 scalar_t__ settimeofday (struct timeval*,int *) ;
 int signal (int ,int ) ;
 int stdout ;

int main(void)
{
 struct timex tx;
 struct timespec ts;
 time_t next_leap;
 int count = 0;

 setbuf(stdout, ((void*)0));

 signal(SIGINT, handler);
 signal(SIGKILL, handler);
 printf("This runs for a few minutes. Press ctrl-c to stop\n");

 clear_time_state();



 clock_gettime(CLOCK_REALTIME, &ts);


 next_leap = ts.tv_sec;
 next_leap += 86400 - (next_leap % 86400);

 for (count = 0; count < 20; count++) {
  struct timeval tv;



  tv.tv_sec = next_leap - 2;
  tv.tv_usec = 0;
  if (settimeofday(&tv, ((void*)0))) {
   printf("Error: You're likely not running with proper (ie: root) permissions\n");
   return ksft_exit_fail();
  }
  tx.modes = 0;
  adjtimex(&tx);


  while (tx.time.tv_sec < next_leap + 1) {

   tx.modes = ADJ_STATUS;
   tx.status = STA_INS;
   adjtimex(&tx);
  }
  clear_time_state();
  printf(".");
  fflush(stdout);
 }
 printf("[OK]\n");
 return ksft_exit_pass();
}
