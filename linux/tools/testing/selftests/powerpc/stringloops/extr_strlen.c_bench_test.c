
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {double tv_sec; int tv_nsec; } ;


 int CLOCK_MONOTONIC ;
 int ITERATIONS_BENCH ;
 int clock_gettime (int ,struct timespec*) ;
 int printf (char*,int,double) ;
 int test_strlen (char*) ;

__attribute__((used)) static void bench_test(char *s)
{
 struct timespec ts_start, ts_end;
 int i;

 clock_gettime(CLOCK_MONOTONIC, &ts_start);

 for (i = 0; i < ITERATIONS_BENCH; i++)
  test_strlen(s);

 clock_gettime(CLOCK_MONOTONIC, &ts_end);

 printf("len %3.3d : time = %.6f\n", test_strlen(s), ts_end.tv_sec - ts_start.tv_sec + (ts_end.tv_nsec - ts_start.tv_nsec) / 1e9);
}
