
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm {int dummy; } ;
struct nn_backoff {int minivl; int maxivl; int n; int timer; } ;


 int nn_timer_init (int *,int,struct nn_fsm*) ;

void nn_backoff_init (struct nn_backoff *self, int src, int minivl, int maxivl,
    struct nn_fsm *owner)
{
    nn_timer_init (&self->timer, src, owner);
    self->minivl = minivl;
    self->maxivl = maxivl;
    self->n = 1;
}
