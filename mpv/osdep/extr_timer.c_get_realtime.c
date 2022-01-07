
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {unsigned long tv_usec; int tv_sec; } ;
struct timespec {unsigned long tv_nsec; int tv_sec; } ;


 int CLOCK_REALTIME ;
 int clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static void get_realtime(struct timespec *out_ts)
{




    struct timeval tv;
    gettimeofday(&tv, ((void*)0));
    out_ts->tv_sec = tv.tv_sec;
    out_ts->tv_nsec = tv.tv_usec * 1000UL;

}
