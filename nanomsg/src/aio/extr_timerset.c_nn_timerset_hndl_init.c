
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_timerset_hndl {int list; } ;


 int nn_list_item_init (int *) ;

void nn_timerset_hndl_init (struct nn_timerset_hndl *self)
{
    nn_list_item_init (&self->list);
}
