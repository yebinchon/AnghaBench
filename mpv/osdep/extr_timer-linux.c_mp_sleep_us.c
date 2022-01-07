
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
typedef int int64_t ;


 int nanosleep (struct timespec*,int *) ;

void mp_sleep_us(int64_t us)
{
    if (us < 0)
        return;
    struct timespec ts;
    ts.tv_sec = us / 1000000;
    ts.tv_nsec = (us % 1000000) * 1000;
    nanosleep(&ts, ((void*)0));
}
