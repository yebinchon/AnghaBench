
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timex {long tick; scalar_t__ freq; scalar_t__ offset; int modes; int status; } ;


 int ADJ_FREQUENCY ;
 int ADJ_OFFSET ;
 int ADJ_STATUS ;
 int ADJ_TICK ;
 long long MILLION ;
 int STA_PLL ;
 int adjtimex (struct timex*) ;
 int fflush (int ) ;
 long long get_ppm_drift () ;
 int llabs (long long) ;
 int printf (char*,...) ;
 int sleep (int) ;
 int stdout ;
 long long systick ;

int check_tick_adj(long tickval)
{
 long long eppm, ppm;
 struct timex tx1;

 tx1.modes = ADJ_TICK;
 tx1.modes |= ADJ_OFFSET;
 tx1.modes |= ADJ_FREQUENCY;
 tx1.modes |= ADJ_STATUS;

 tx1.status = STA_PLL;
 tx1.offset = 0;
 tx1.freq = 0;
 tx1.tick = tickval;

 adjtimex(&tx1);

 sleep(1);

 ppm = ((long long)tickval * MILLION)/systick - MILLION;
 printf("Estimating tick (act: %ld usec, %lld ppm): ", tickval, ppm);

 eppm = get_ppm_drift();
 printf("%lld usec, %lld ppm", systick + (systick * eppm / MILLION), eppm);
 fflush(stdout);

 tx1.modes = 0;
 adjtimex(&tx1);

 if (tx1.offset || tx1.freq || tx1.tick != tickval) {
  printf("	[ERROR]\n");
  printf("\tUnexpected adjtimex return values, make sure ntpd is not running.\n");
  return -1;
 }
 if (llabs(eppm - ppm) > 100) {
  printf("	[FAILED]\n");
  return -1;
 }
 printf("	[OK]\n");

 return 0;
}
