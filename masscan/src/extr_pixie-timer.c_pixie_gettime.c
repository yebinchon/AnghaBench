
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timespec {int tv_sec; int tv_nsec; } ;


 int CLOCK_MONOTONIC ;
 int CLOCK_UPTIME_RAW ;
 int clock_gettime (int ,struct timespec*) ;
 int errno ;
 int printf (char*,int) ;

uint64_t
pixie_gettime(void)
{
    int x;
    struct timespec tv;







    x = clock_gettime(CLOCK_MONOTONIC, &tv);

    if (x != 0) {
        printf("clock_gettime() err %d\n", errno);
    }

    return tv.tv_sec * 1000000 + tv.tv_nsec/1000;
}
