
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {double tv_sec; int tv_nsec; } ;


 int CLOCK_MONOTONIC ;
 int FUTEX_WAKE ;
 unsigned long ITERATIONS ;
 int clock_gettime (int ,struct timespec*) ;
 int futex (unsigned int*,int ,int,int *,int *,int ) ;
 int printf (char*,double) ;

int test_futex(void)
{
 struct timespec ts_start, ts_end;
 unsigned long i = ITERATIONS;

 clock_gettime(CLOCK_MONOTONIC, &ts_start);

 while (i--) {
  unsigned int addr = 0;
  futex(&addr, FUTEX_WAKE, 1, ((void*)0), ((void*)0), 0);
 }

 clock_gettime(CLOCK_MONOTONIC, &ts_end);

 printf("time = %.6f\n", ts_end.tv_sec - ts_start.tv_sec + (ts_end.tv_nsec - ts_start.tv_nsec) / 1e9);

 return 0;
}
