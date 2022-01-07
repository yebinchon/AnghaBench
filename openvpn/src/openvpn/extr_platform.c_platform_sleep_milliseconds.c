
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {unsigned int tv_sec; unsigned int tv_usec; } ;


 int Sleep (unsigned int) ;
 int select (int ,int *,int *,int *,struct timeval*) ;

void
platform_sleep_milliseconds(unsigned int n)
{



    struct timeval tv;
    tv.tv_sec = n / 1000;
    tv.tv_usec = (n % 1000) * 1000;
    select(0, ((void*)0), ((void*)0), ((void*)0), &tv);

}
