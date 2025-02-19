
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nn_msgqueue_chunk {int * next; } ;
struct TYPE_4__ {scalar_t__ pos; struct nn_msgqueue_chunk* chunk; } ;
struct TYPE_3__ {scalar_t__ pos; struct nn_msgqueue_chunk* chunk; } ;
struct nn_msgqueue {size_t maxmem; int * cache; TYPE_2__ in; TYPE_1__ out; scalar_t__ mem; scalar_t__ count; } ;


 int alloc_assert (struct nn_msgqueue_chunk*) ;
 struct nn_msgqueue_chunk* nn_alloc (int,char*) ;

void nn_msgqueue_init (struct nn_msgqueue *self, size_t maxmem)
{
    struct nn_msgqueue_chunk *chunk;

    self->count = 0;
    self->mem = 0;
    self->maxmem = maxmem;

    chunk = nn_alloc (sizeof (struct nn_msgqueue_chunk), "msgqueue chunk");
    alloc_assert (chunk);
    chunk->next = ((void*)0);

    self->out.chunk = chunk;
    self->out.pos = 0;
    self->in.chunk = chunk;
    self->in.pos = 0;

    self->cache = ((void*)0);
}
