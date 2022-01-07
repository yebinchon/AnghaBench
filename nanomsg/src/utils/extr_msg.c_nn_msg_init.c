
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_msg {int body; int hdrs; int sphdr; } ;


 int nn_chunkref_init (int *,size_t) ;

void nn_msg_init (struct nn_msg *self, size_t size)
{
    nn_chunkref_init (&self->sphdr, 0);
    nn_chunkref_init (&self->hdrs, 0);
    nn_chunkref_init (&self->body, size);
}
