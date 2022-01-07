
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_backoff {int n; int minivl; int maxivl; int timer; } ;


 int nn_timer_start (int *,int) ;

void nn_backoff_start (struct nn_backoff *self)
{
     int timeout;



     timeout = (self->n - 1) * self->minivl;
     if (timeout > self->maxivl)
         timeout = self->maxivl;
     else
         self->n *= 2;
     nn_timer_start (&self->timer, timeout);
}
