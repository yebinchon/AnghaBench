
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_msg {int body; int hdrs; int sphdr; } ;


 int nn_chunkref_term (int *) ;

void nn_msg_term (struct nn_msg *self)
{
    nn_chunkref_term (&self->sphdr);
    nn_chunkref_term (&self->hdrs);
    nn_chunkref_term (&self->body);
}
