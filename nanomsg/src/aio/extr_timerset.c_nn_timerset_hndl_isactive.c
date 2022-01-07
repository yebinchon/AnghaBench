
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_timerset_hndl {int list; } ;


 int nn_list_item_isinlist (int *) ;

int nn_timerset_hndl_isactive (struct nn_timerset_hndl *self)
{
    return nn_list_item_isinlist (&self->list);
}
