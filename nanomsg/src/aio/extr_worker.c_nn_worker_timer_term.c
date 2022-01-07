
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_worker_timer {int hndl; } ;


 int nn_timerset_hndl_term (int *) ;

void nn_worker_timer_term (struct nn_worker_timer *self)
{
    nn_timerset_hndl_term (&self->hndl);
}
