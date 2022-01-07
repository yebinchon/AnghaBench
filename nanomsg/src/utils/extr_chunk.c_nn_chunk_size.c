
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; } ;


 TYPE_1__* nn_chunk_getptr (void*) ;

size_t nn_chunk_size (void *p)
{
    return nn_chunk_getptr (p)->size;
}
