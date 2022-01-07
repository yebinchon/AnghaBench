
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct TYPE_6__ {int denom; int numer; } ;
typedef TYPE_1__ mach_timebase_info_data_t ;
struct TYPE_7__ {int QuadPart; } ;
typedef TYPE_2__ LARGE_INTEGER ;


 int CLOCK_MONOTONIC ;
 int QueryPerformanceCounter (TYPE_2__*) ;
 int QueryPerformanceFrequency (TYPE_2__*) ;
 int clock_gettime (int ,struct timespec*) ;
 int errno_assert (int) ;
 int gethrtime () ;
 int gettimeofday (struct timeval*,int *) ;
 int mach_absolute_time () ;
 int mach_timebase_info (TYPE_1__*) ;
 scalar_t__ nn_slow (int) ;

uint64_t nn_clock_ms (void)
{
    int rc;
    struct timeval tv;



    rc = gettimeofday (&tv, ((void*)0));
    errno_assert (rc == 0);
    return tv.tv_sec * (uint64_t) 1000 + tv.tv_usec / 1000;


}
