
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct nn_chunkref_chunk {int tag; int chunk; } ;
struct TYPE_2__ {scalar_t__* ref; } ;
struct nn_chunkref {TYPE_1__ u; } ;


 size_t NN_CHUNKREF_MAX ;
 int errno_assert (int) ;
 int nn_chunk_alloc (size_t,int ,int *) ;

void nn_chunkref_init (struct nn_chunkref *self, size_t size)
{
    int rc;
    struct nn_chunkref_chunk *ch;

    if (size < NN_CHUNKREF_MAX) {
        self->u.ref [0] = (uint8_t) size;
        return;
    }

    ch = (struct nn_chunkref_chunk*) self;
    ch->tag = 0xff;
    rc = nn_chunk_alloc (size, 0, &ch->chunk);
    errno_assert (rc == 0);
}
