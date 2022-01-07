
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_backoff {int timer; } ;


 int nn_timer_stop (int *) ;

void nn_backoff_stop (struct nn_backoff *self)
{
    nn_timer_stop (&self->timer);
}
