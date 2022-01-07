
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_chunkref {int dummy; } ;


 int memcpy (struct nn_chunkref*,struct nn_chunkref*,int) ;

void nn_chunkref_bulkcopy_cp (struct nn_chunkref *dst, struct nn_chunkref *src)
{
    memcpy (dst, src, sizeof (struct nn_chunkref));
}
