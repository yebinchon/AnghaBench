
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {double tv_sec; int tv_nsec; } ;


 int CHUNK_COUNT ;
 int CLOCK_MONOTONIC ;
 int FAIL_IF (int) ;
 int MAP_ANONYMOUS ;
 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int MEMSIZE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int clock_gettime (int ,struct timespec*) ;
 unsigned long iterations ;
 char* mmap (int *,int ,int,int,int,int ) ;
 int munmap (char*,int ) ;
 scalar_t__ pg_fault ;
 int printf (char*,double) ;

int test_mmap(void)
{
 struct timespec ts_start, ts_end;
 unsigned long i = iterations;

 clock_gettime(CLOCK_MONOTONIC, &ts_start);

 while (i--) {
  char *c = mmap(((void*)0), MEMSIZE, PROT_READ|PROT_WRITE,
          MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
  FAIL_IF(c == MAP_FAILED);
  if (pg_fault) {
   int count;
   for (count = 0; count < CHUNK_COUNT; count++)
    c[count << 16] = 'c';
  }
  munmap(c, MEMSIZE);
 }

 clock_gettime(CLOCK_MONOTONIC, &ts_end);

 printf("time = %.6f\n", ts_end.tv_sec - ts_start.tv_sec + (ts_end.tv_nsec - ts_start.tv_nsec) / 1e9);

 return 0;
}
