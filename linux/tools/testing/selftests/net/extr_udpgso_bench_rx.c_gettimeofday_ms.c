
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static unsigned long gettimeofday_ms(void)
{
 struct timeval tv;

 gettimeofday(&tv, ((void*)0));
 return (tv.tv_sec * 1000) + (tv.tv_usec / 1000);
}
