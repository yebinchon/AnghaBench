
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timex {int freq; scalar_t__ tick; scalar_t__ offset; scalar_t__ modes; } ;
struct timespec {int dummy; } ;


 int CLOCK_MONOTONIC_RAW ;
 long long NSEC_PER_SEC ;
 int abs (int) ;
 int adjtimex (struct timex*) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 long long diff_timespec (struct timespec,struct timespec) ;
 int fflush (int ) ;
 int get_monotonic_and_raw (struct timespec*,struct timespec*) ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int ksft_exit_skip (char*) ;
 int llabs (long long) ;
 int printf (char*,...) ;
 int setbuf (int ,int *) ;
 long long shift_right (long long,int) ;
 int sleep (int) ;
 int stdout ;

int main(int argv, char **argc)
{
 struct timespec mon, raw, start, end;
 long long delta1, delta2, interval, eppm, ppm;
 struct timex tx1, tx2;

 setbuf(stdout, ((void*)0));

 if (clock_gettime(CLOCK_MONOTONIC_RAW, &raw)) {
  printf("ERR: NO CLOCK_MONOTONIC_RAW\n");
  return -1;
 }

 tx1.modes = 0;
 adjtimex(&tx1);
 get_monotonic_and_raw(&mon, &raw);
 start = mon;
 delta1 = diff_timespec(mon, raw);

 if (tx1.offset)
  printf("WARNING: ADJ_OFFSET in progress, this will cause inaccurate results\n");

 printf("Estimating clock drift: ");
 fflush(stdout);
 sleep(120);

 get_monotonic_and_raw(&mon, &raw);
 end = mon;
 tx2.modes = 0;
 adjtimex(&tx2);
 delta2 = diff_timespec(mon, raw);

 interval = diff_timespec(start, end);


 eppm = ((delta2-delta1)*NSEC_PER_SEC)/interval;
 eppm = -eppm;
 printf("%lld.%i(est)", eppm/1000, abs((int)(eppm%1000)));


 ppm = (tx1.freq + tx2.freq) * 1000 / 2;
 ppm = (long long)tx1.freq * 1000;
 ppm = shift_right(ppm, 16);
 printf(" %lld.%i(act)", ppm/1000, abs((int)(ppm%1000)));

 if (llabs(eppm - ppm) > 1000) {
  if (tx1.offset || tx2.offset ||
      tx1.freq != tx2.freq || tx1.tick != tx2.tick) {
   printf("	[SKIP]\n");
   return ksft_exit_skip("The clock was adjusted externally. Shutdown NTPd or other time sync daemons\n");
  }
  printf("	[FAILED]\n");
  return ksft_exit_fail();
 }
 printf("	[OK]\n");
 return ksft_exit_pass();
}
