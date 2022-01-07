
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef scalar_t__ mp_uint_t ;


 int gettimeofday (struct timeval*,int *) ;

mp_uint_t mp_hal_ticks_us(void) {
    struct timeval tv;
    gettimeofday(&tv, ((void*)0));
    return tv.tv_sec * 1000000 + tv.tv_usec;
}
