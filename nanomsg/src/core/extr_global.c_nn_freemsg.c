
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nn_chunk_free (void*) ;

int nn_freemsg (void *msg)
{
    nn_chunk_free (msg);
    return 0;
}
