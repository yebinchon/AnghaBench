
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int gettimeofday (struct timeval*,int ) ;

int fpm_clock_get(struct timeval *tv)
{
 return gettimeofday(tv, 0);
}
