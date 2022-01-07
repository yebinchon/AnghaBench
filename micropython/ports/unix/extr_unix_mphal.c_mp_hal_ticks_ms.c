
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef int mp_uint_t ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;

mp_uint_t mp_hal_ticks_ms(void) {





    struct timeval tv;
    gettimeofday(&tv, ((void*)0));
    return tv.tv_sec * 1000 + tv.tv_usec / 1000;

}
