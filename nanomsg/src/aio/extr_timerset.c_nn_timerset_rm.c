
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_timerset_hndl {int list; } ;
struct nn_timerset {int timeouts; } ;


 int * nn_list_begin (int *) ;
 int nn_list_erase (int *,int *) ;
 int nn_list_item_isinlist (int *) ;

int nn_timerset_rm (struct nn_timerset *self, struct nn_timerset_hndl *hndl)
{
    int first;


    if (!nn_list_item_isinlist (&hndl->list))
        return 0;



    first = nn_list_begin (&self->timeouts) == &hndl->list ? 1 : 0;
    nn_list_erase (&self->timeouts, &hndl->list);
    return first;
}
