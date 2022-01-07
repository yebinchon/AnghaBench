
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 int printf (char*,long,int) ;
 int settimeofday (struct timeval*,int *) ;

int settime(long long time)
{
 struct timeval now;
 int ret;

 now.tv_sec = (time_t)time;
 now.tv_usec = 0;

 ret = settimeofday(&now, ((void*)0));

 printf("Setting time to 0x%lx: %d\n", (long)time, ret);
 return ret;
}
