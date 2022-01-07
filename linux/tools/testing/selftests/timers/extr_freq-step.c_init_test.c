
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct sample {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int CLOCK_MONOTONIC_RAW ;
 int MAX_PRECISION ;
 int _SC_CLK_TCK ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 double get_sample (struct sample*) ;
 int ksft_exit_fail () ;
 int ksft_exit_skip (char*,int,int) ;
 int mono_base ;
 int mono_raw_base ;
 int perror (char*) ;
 int precision ;
 int printf (char*,...) ;
 int run_test (int,double,double) ;
 int srand (int) ;
 int sysconf (int ) ;
 int user_hz ;

__attribute__((used)) static void init_test(void)
{
 struct timespec ts;
 struct sample sample;

 if (clock_gettime(CLOCK_MONOTONIC_RAW, &ts)) {
  perror("[FAIL] clock_gettime(CLOCK_MONOTONIC_RAW)");
  ksft_exit_fail();
 }

 mono_raw_base = ts.tv_sec;

 if (clock_gettime(CLOCK_MONOTONIC, &ts)) {
  perror("[FAIL] clock_gettime(CLOCK_MONOTONIC)");
  ksft_exit_fail();
 }

 mono_base = ts.tv_sec;

 user_hz = sysconf(_SC_CLK_TCK);

 precision = get_sample(&sample) / 2.0;
 printf("CLOCK_MONOTONIC_RAW+CLOCK_MONOTONIC precision: %.0f ns\t\t",
        1e9 * precision);

 if (precision > MAX_PRECISION)
  ksft_exit_skip("precision: %.0f ns > MAX_PRECISION: %.0f ns\n",
    1e9 * precision, 1e9 * MAX_PRECISION);

 printf("[OK]\n");
 srand(ts.tv_sec ^ ts.tv_nsec);

 run_test(1, 0.0, 0.0);
}
