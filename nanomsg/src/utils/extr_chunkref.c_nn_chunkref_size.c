
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_chunkref_chunk {int chunk; } ;
struct TYPE_2__ {int* ref; } ;
struct nn_chunkref {TYPE_1__ u; } ;


 size_t nn_chunk_size (int ) ;

size_t nn_chunkref_size (struct nn_chunkref *self)
{
    return self->u.ref [0] == 0xff ?
        nn_chunk_size (((struct nn_chunkref_chunk*) self)->chunk) :
        self->u.ref [0];
}
