
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; int tv_sec; } ;
typedef int clockid_t ;




 int EINVAL ;
 int errno ;
 int time (int *) ;

int clock_gettime(clockid_t clk_id, struct timespec *ts)
{
    switch (clk_id) {
    case 129:
    case 128:

        ts->tv_sec = time(((void*)0));
        ts->tv_nsec = 0;
        return 0;
    }

    errno = EINVAL;
    return -1;
}
