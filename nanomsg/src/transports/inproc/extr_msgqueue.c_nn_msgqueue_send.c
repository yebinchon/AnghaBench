
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nn_msgqueue_chunk {int dummy; } ;
struct TYPE_4__ {size_t pos; TYPE_2__* chunk; } ;
struct nn_msgqueue {scalar_t__ count; scalar_t__ mem; scalar_t__ maxmem; TYPE_1__ out; TYPE_2__* cache; } ;
struct nn_msg {int body; int sphdr; } ;
struct TYPE_5__ {struct TYPE_5__* next; int * msgs; } ;


 int EAGAIN ;
 size_t NN_MSGQUEUE_GRANULARITY ;
 int alloc_assert (TYPE_2__*) ;
 TYPE_2__* nn_alloc (int,char*) ;
 size_t nn_chunkref_size (int *) ;
 int nn_msg_mv (int *,struct nn_msg*) ;
 scalar_t__ nn_slow (int) ;

int nn_msgqueue_send (struct nn_msgqueue *self, struct nn_msg *msg)
{
    size_t msgsz;




    msgsz = nn_chunkref_size (&msg->sphdr) + nn_chunkref_size (&msg->body);
    if (nn_slow (self->count > 0 && self->mem + msgsz >= self->maxmem))
        return -EAGAIN;


    ++self->count;
    self->mem += msgsz;


    nn_msg_mv (&self->out.chunk->msgs [self->out.pos], msg);
    ++self->out.pos;



    if (nn_slow (self->out.pos == NN_MSGQUEUE_GRANULARITY)) {
        if (nn_slow (!self->cache)) {
            self->cache = nn_alloc (sizeof (struct nn_msgqueue_chunk),
                "msgqueue chunk");
            alloc_assert (self->cache);
            self->cache->next = ((void*)0);
        }
        self->out.chunk->next = self->cache;
        self->out.chunk = self->cache;
        self->cache = ((void*)0);
        self->out.pos = 0;
    }

    return 0;
}
