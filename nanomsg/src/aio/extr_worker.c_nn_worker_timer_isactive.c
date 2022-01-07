
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_worker_timer {int hndl; } ;


 int nn_timerset_hndl_isactive (int *) ;

int nn_worker_timer_isactive (struct nn_worker_timer *self)
{
    return nn_timerset_hndl_isactive (&self->hndl);
}
