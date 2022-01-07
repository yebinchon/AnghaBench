
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pool {int dummy; } ;
struct nn_ctx {int onleave; int eventsto; int events; struct nn_pool* pool; int sync; } ;
typedef int nn_ctx_onleave ;


 int nn_mutex_init (int *) ;
 int nn_queue_init (int *) ;

void nn_ctx_init (struct nn_ctx *self, struct nn_pool *pool,
    nn_ctx_onleave onleave)
{
    nn_mutex_init (&self->sync);
    self->pool = pool;
    nn_queue_init (&self->events);
    nn_queue_init (&self->eventsto);
    self->onleave = onleave;
}
