
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_chunkref {int dummy; } ;
struct nn_msg {struct nn_chunkref body; } ;


 int nn_chunkref_term (struct nn_chunkref*) ;

void nn_msg_replace_body (struct nn_msg *self, struct nn_chunkref new_body)
{
    nn_chunkref_term (&self->body);
    self->body = new_body;
}
