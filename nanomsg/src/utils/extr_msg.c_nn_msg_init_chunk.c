
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_msg {int body; int hdrs; int sphdr; } ;


 int nn_chunkref_init (int *,int ) ;
 int nn_chunkref_init_chunk (int *,void*) ;

void nn_msg_init_chunk (struct nn_msg *self, void *chunk)
{
    nn_chunkref_init (&self->sphdr, 0);
    nn_chunkref_init (&self->hdrs, 0);
    nn_chunkref_init_chunk (&self->body, chunk);
}
