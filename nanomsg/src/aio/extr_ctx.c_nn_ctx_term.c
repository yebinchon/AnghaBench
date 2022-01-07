
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ctx {int sync; int events; int eventsto; } ;


 int nn_mutex_term (int *) ;
 int nn_queue_term (int *) ;

void nn_ctx_term (struct nn_ctx *self)
{
    nn_queue_term (&self->eventsto);
    nn_queue_term (&self->events);
    nn_mutex_term (&self->sync);
}
