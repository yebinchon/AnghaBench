
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_chunkref_chunk {int chunk; } ;
struct TYPE_2__ {int* ref; } ;
struct nn_chunkref {TYPE_1__ u; } ;


 int memcpy (struct nn_chunkref*,struct nn_chunkref*,int) ;
 int nn_chunk_addref (int ,int) ;

void nn_chunkref_cp (struct nn_chunkref *dst, struct nn_chunkref *src)
{
    struct nn_chunkref_chunk *ch;

    if (src->u.ref [0] == 0xff) {
        ch = (struct nn_chunkref_chunk*) src;
        nn_chunk_addref (ch->chunk, 1);
    }
    memcpy (dst, src, sizeof (struct nn_chunkref));
}
