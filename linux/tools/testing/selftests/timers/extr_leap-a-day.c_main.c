
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int timer_t ;
typedef int time_t ;
struct TYPE_8__ {int tv_sec; int tv_usec; } ;
struct timex {scalar_t__ status; TYPE_4__ time; int tai; void* modes; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct TYPE_5__ {scalar_t__ sival_int; } ;
struct sigevent {int sigev_signo; TYPE_1__ sigev_value; int sigev_notify; } ;
struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct itimerspec {TYPE_3__ it_interval; TYPE_2__ it_value; } ;
typedef int se ;


 void* ADJ_STATUS ;
 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 int CLOCK_TAI ;
 int NSEC_PER_SEC ;
 int SIGEV_SIGNAL ;
 int SIGINT ;
 int SIGKILL ;
 int SIGRTMAX ;
 scalar_t__ STA_DEL ;
 scalar_t__ STA_INS ;
 int TIMER_ABSTIME ;
 int adjtimex (struct timex*) ;
 int atoi (int ) ;
 int clear_time_state () ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 scalar_t__ clock_nanosleep (int ,int ,struct timespec*,int *) ;
 char* ctime (int*) ;
 int ctime_r (int*,char*) ;
 scalar_t__ error_found ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int handler ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int memset (struct sigevent*,int ,int) ;
 int next_leap ;
 int optarg ;
 int printf (char*,...) ;
 int settimeofday (struct timeval*,int *) ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigalarm ;
 int sigfillset (int *) ;
 int signal (int ,int ) ;
 int strlen (char*) ;
 int test_hrtimer_failure () ;
 char* time_state_str (int) ;
 int timer_create (int ,struct sigevent*,int *) ;
 int timer_settime (int ,int ,struct itimerspec*,int *) ;

int main(int argc, char **argv)
{
 timer_t tm1;
 struct itimerspec its1;
 struct sigevent se;
 struct sigaction act;
 int signum = SIGRTMAX;
 int settime = 1;
 int tai_time = 0;
 int insert = 1;
 int iterations = 10;
 int opt;


 while ((opt = getopt(argc, argv, "sti:")) != -1) {
  switch (opt) {
  case 'w':
   printf("Only setting leap-flag, not changing time. It could take up to a day for leap to trigger.\n");
   settime = 0;
   break;
  case 'i':
   iterations = atoi(optarg);
   break;
  case 't':
   tai_time = 1;
   break;
  default:
   printf("Usage: %s [-w] [-i <iterations>]\n", argv[0]);
   printf("	-w: Set flag and wait for leap second each iteration");
   printf("	    (default sets time to right before leapsecond)\n");
   printf("	-i: Number of iterations (-1 = infinite, default is 10)\n");
   printf("	-t: Print TAI time\n");
   exit(-1);
  }
 }


 if (tai_time) {
  struct timespec ts;

  if (clock_gettime(CLOCK_TAI, &ts)) {
   printf("System doesn't support CLOCK_TAI\n");
   ksft_exit_fail();
  }
 }

 signal(SIGINT, handler);
 signal(SIGKILL, handler);


 sigfillset(&act.sa_mask);
 act.sa_flags = 0;
 act.sa_handler = sigalarm;
 sigaction(signum, &act, ((void*)0));

 if (iterations < 0)
  printf("This runs continuously. Press ctrl-c to stop\n");
 else
  printf("Running for %i iterations. Press ctrl-c to stop\n", iterations);

 printf("\n");
 while (1) {
  int ret;
  struct timespec ts;
  struct timex tx;
  time_t now;


  clock_gettime(CLOCK_REALTIME, &ts);


  next_leap = ts.tv_sec;
  next_leap += 86400 - (next_leap % 86400);

  if (settime) {
   struct timeval tv;

   tv.tv_sec = next_leap - 10;
   tv.tv_usec = 0;
   settimeofday(&tv, ((void*)0));
   printf("Setting time to %s", ctime(&tv.tv_sec));
  }


  clear_time_state();


  tx.modes = ADJ_STATUS;
  if (insert)
   tx.status = STA_INS;
  else
   tx.status = STA_DEL;
  ret = adjtimex(&tx);
  if (ret < 0) {
   printf("Error: Problem setting STA_INS/STA_DEL!: %s\n",
       time_state_str(ret));
   return ksft_exit_fail();
  }


  tx.modes = 0;
  ret = adjtimex(&tx);
  if (tx.status != STA_INS && tx.status != STA_DEL) {
   printf("Error: STA_INS/STA_DEL not set!: %s\n",
       time_state_str(ret));
   return ksft_exit_fail();
  }

  if (tai_time) {
   printf("Using TAI time,"
    " no inconsistencies should be seen!\n");
  }

  printf("Scheduling leap second for %s", ctime(&next_leap));


  printf("Setting timer for %ld -  %s", next_leap, ctime(&next_leap));
  memset(&se, 0, sizeof(se));
  se.sigev_notify = SIGEV_SIGNAL;
  se.sigev_signo = signum;
  se.sigev_value.sival_int = 0;
  if (timer_create(CLOCK_REALTIME, &se, &tm1) == -1) {
   printf("Error: timer_create failed\n");
   return ksft_exit_fail();
  }
  its1.it_value.tv_sec = next_leap;
  its1.it_value.tv_nsec = 0;
  its1.it_interval.tv_sec = 0;
  its1.it_interval.tv_nsec = 0;
  timer_settime(tm1, TIMER_ABSTIME, &its1, ((void*)0));


  ts.tv_sec = next_leap - 3;
  ts.tv_nsec = 0;


  while (clock_nanosleep(CLOCK_REALTIME, TIMER_ABSTIME, &ts, ((void*)0)))
   printf("Something woke us up, returning to sleep\n");


  tx.modes = 0;
  ret = adjtimex(&tx);
  if (tx.status != STA_INS && tx.status != STA_DEL) {
   printf("Something cleared STA_INS/STA_DEL, setting it again.\n");
   tx.modes = ADJ_STATUS;
   if (insert)
    tx.status = STA_INS;
   else
    tx.status = STA_DEL;
   ret = adjtimex(&tx);
  }


  now = tx.time.tv_sec;
  while (now < next_leap + 2) {
   char buf[26];
   struct timespec tai;
   int ret;

   tx.modes = 0;
   ret = adjtimex(&tx);

   if (tai_time) {
    clock_gettime(CLOCK_TAI, &tai);
    printf("%ld sec, %9ld ns\t%s\n",
      tai.tv_sec,
      tai.tv_nsec,
      time_state_str(ret));
   } else {
    ctime_r(&tx.time.tv_sec, buf);
    buf[strlen(buf)-1] = 0;

    printf("%s + %6ld us (%i)\t%s\n",
      buf,
      tx.time.tv_usec,
      tx.tai,
      time_state_str(ret));
   }
   now = tx.time.tv_sec;

   ts.tv_sec = 0;
   ts.tv_nsec = NSEC_PER_SEC / 2;
   clock_nanosleep(CLOCK_MONOTONIC, 0, &ts, ((void*)0));
  }

  insert = !insert;


  test_hrtimer_failure();

  printf("Leap complete\n");
  if (error_found) {
   printf("Errors observed\n");
   clear_time_state();
   return ksft_exit_fail();
  }
  printf("\n");
  if ((iterations != -1) && !(--iterations))
   break;
 }

 clear_time_state();
 return ksft_exit_pass();
}
