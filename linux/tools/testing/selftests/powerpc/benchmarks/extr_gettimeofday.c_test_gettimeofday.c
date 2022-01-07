
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_sec; int tv_usec; } ;


 int gettimeofday (struct timeval*,int *) ;
 int printf (char*,double) ;

__attribute__((used)) static int test_gettimeofday(void)
{
 int i;

 struct timeval tv_start, tv_end;

 gettimeofday(&tv_start, ((void*)0));

 for(i = 0; i < 100000000; i++) {
  gettimeofday(&tv_end, ((void*)0));
 }

 printf("time = %.6f\n", tv_end.tv_sec - tv_start.tv_sec + (tv_end.tv_usec - tv_start.tv_usec) * 1e-6);

 return 0;
}
