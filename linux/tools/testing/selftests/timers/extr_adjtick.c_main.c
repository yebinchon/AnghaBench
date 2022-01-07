
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timex {int tick; scalar_t__ freq; scalar_t__ offset; int modes; } ;
struct timespec {int dummy; } ;


 int ADJ_FREQUENCY ;
 int ADJ_OFFSET ;
 int ADJ_TICK ;
 int CLOCK_MONOTONIC_RAW ;
 int USEC_PER_SEC ;
 int _SC_CLK_TCK ;
 int adjtimex (struct timex*) ;
 scalar_t__ check_tick_adj (long) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int printf (char*) ;
 int setbuf (int ,int *) ;
 int stdout ;
 int sysconf (int ) ;
 int systick ;

int main(int argv, char **argc)
{
 struct timespec raw;
 long tick, max, interval, err;
 struct timex tx1;

 err = 0;
 setbuf(stdout, ((void*)0));

 if (clock_gettime(CLOCK_MONOTONIC_RAW, &raw)) {
  printf("ERR: NO CLOCK_MONOTONIC_RAW\n");
  return -1;
 }

 printf("Each iteration takes about 15 seconds\n");

 systick = sysconf(_SC_CLK_TCK);
 systick = USEC_PER_SEC/sysconf(_SC_CLK_TCK);
 max = systick/10;
 interval = max/4;

 for (tick = (systick - max); tick < (systick + max); tick += interval) {
  if (check_tick_adj(tick)) {
   err = 1;
   break;
  }
 }


 tx1.modes = ADJ_TICK;
 tx1.modes |= ADJ_OFFSET;
 tx1.modes |= ADJ_FREQUENCY;

 tx1.offset = 0;
 tx1.freq = 0;
 tx1.tick = systick;

 adjtimex(&tx1);

 if (err)
  return ksft_exit_fail();

 return ksft_exit_pass();
}
