
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct nn_stopwatch {int start; } ;


 int assert (int) ;
 int gettimeofday (struct timeval*,int *) ;

void nn_stopwatch_init (struct nn_stopwatch *self)
{
    int rc;
    struct timeval tv;

    rc = gettimeofday (&tv, ((void*)0));
    assert (rc == 0);
    self->start = (uint64_t) (((uint64_t) tv.tv_sec) * 1000000 + tv.tv_usec);
}
