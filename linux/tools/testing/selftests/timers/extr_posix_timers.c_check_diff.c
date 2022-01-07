
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long long tv_usec; long long tv_sec; } ;


 long long DELAY ;
 long long USECS_PER_SEC ;
 long long abs (long long) ;
 int printf (char*,long long) ;

__attribute__((used)) static int check_diff(struct timeval start, struct timeval end)
{
 long long diff;

 diff = end.tv_usec - start.tv_usec;
 diff += (end.tv_sec - start.tv_sec) * USECS_PER_SEC;

 if (abs(diff - DELAY * USECS_PER_SEC) > USECS_PER_SEC / 2) {
  printf("Diff too high: %lld..", diff);
  return -1;
 }

 return 0;
}
