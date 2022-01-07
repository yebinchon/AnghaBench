
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ins_item {int item; struct nn_ep* ep; } ;
struct nn_ep {int dummy; } ;


 int nn_list_item_init (int *) ;

void nn_ins_item_init (struct nn_ins_item *self, struct nn_ep *ep)
{
    self->ep = ep;
    nn_list_item_init (&self->item);
}
