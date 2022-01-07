
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_chunkref_chunk {int dummy; } ;
struct TYPE_2__ {int* ref; } ;
struct nn_chunkref {TYPE_1__ u; } ;


 int memcpy (struct nn_chunkref*,struct nn_chunkref*,int) ;

void nn_chunkref_mv (struct nn_chunkref *dst, struct nn_chunkref *src)
{
    memcpy (dst, src, src->u.ref [0] == 0xff ?
        (int)sizeof (struct nn_chunkref_chunk) : src->u.ref [0] + 1);
}
