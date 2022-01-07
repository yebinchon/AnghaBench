
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long uint64_t ;
struct timespec {long long tv_sec; int tv_nsec; } ;


 int CLOCK_MONOTONIC ;
 int abort () ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;

uint64_t mp_raw_time_us(void)
{
    struct timespec ts;
    if (clock_gettime(CLOCK_MONOTONIC, &ts))
        abort();
    return ts.tv_sec * 1000000LL + ts.tv_nsec / 1000;
}
