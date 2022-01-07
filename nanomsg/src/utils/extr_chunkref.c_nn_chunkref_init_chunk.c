
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_chunkref_chunk {int tag; void* chunk; } ;
struct nn_chunkref {int dummy; } ;



void nn_chunkref_init_chunk (struct nn_chunkref *self, void *chunk)
{
    struct nn_chunkref_chunk *ch;

    ch = (struct nn_chunkref_chunk*) self;
    ch->tag = 0xff;
    ch->chunk = chunk;
}
