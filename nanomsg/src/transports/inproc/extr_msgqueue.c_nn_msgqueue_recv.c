
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_msgqueue_chunk {struct nn_msgqueue_chunk* next; int * msgs; } ;
struct TYPE_2__ {size_t pos; struct nn_msgqueue_chunk* chunk; } ;
struct nn_msgqueue {int mem; int count; struct nn_msgqueue_chunk* cache; TYPE_1__ in; } ;
struct nn_msg {int body; int sphdr; } ;


 int EAGAIN ;
 size_t NN_MSGQUEUE_GRANULARITY ;
 scalar_t__ nn_chunkref_size (int *) ;
 scalar_t__ nn_fast (int) ;
 int nn_free (struct nn_msgqueue_chunk*) ;
 int nn_msg_mv (struct nn_msg*,int *) ;
 scalar_t__ nn_slow (int) ;

int nn_msgqueue_recv (struct nn_msgqueue *self, struct nn_msg *msg)
{
    struct nn_msgqueue_chunk *o;


    if (nn_slow (!self->count))
        return -EAGAIN;


    nn_msg_mv (msg, &self->in.chunk->msgs [self->in.pos]);


    ++self->in.pos;
    if (nn_slow (self->in.pos == NN_MSGQUEUE_GRANULARITY)) {
        o = self->in.chunk;
        self->in.chunk = self->in.chunk->next;
        self->in.pos = 0;
        if (nn_fast (!self->cache))
            self->cache = o;
        else
            nn_free (o);
    }


    --self->count;
    self->mem -= (nn_chunkref_size (&msg->sphdr) +
        nn_chunkref_size (&msg->body));

    return 0;
}
