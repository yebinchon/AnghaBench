
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;


 int errno_assert (int) ;
 int nanosleep (struct timespec*,int *) ;

void nn_sleep (int milliseconds)
{
    int rc;
    struct timespec ts;

    ts.tv_sec = milliseconds / 1000;
    ts.tv_nsec = milliseconds % 1000 * 1000000;
    rc = nanosleep (&ts, ((void*)0));
    errno_assert (rc == 0);
}
