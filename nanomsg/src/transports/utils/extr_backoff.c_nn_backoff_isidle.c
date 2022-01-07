
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_backoff {int timer; } ;


 int nn_timer_isidle (int *) ;

int nn_backoff_isidle (struct nn_backoff *self)
{
    return nn_timer_isidle (&self->timer);
}
