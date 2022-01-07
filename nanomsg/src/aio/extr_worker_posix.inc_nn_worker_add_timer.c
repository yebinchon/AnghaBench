
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_worker_timer {int hndl; } ;
struct nn_worker {int timerset; } ;


 int nn_timerset_add (int *,int,int *) ;

void nn_worker_add_timer (struct nn_worker *self, int timeout,
    struct nn_worker_timer *timer)
{
    nn_timerset_add (&self->timerset, timeout, &timer->hndl);
}
