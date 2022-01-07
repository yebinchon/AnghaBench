
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_priolist_slot {struct nn_priolist_data* current; int pipes; } ;
struct nn_priolist_data {int priority; int item; } ;
struct nn_priolist {int current; struct nn_priolist_slot* slots; } ;


 int nn_list_empty (int *) ;
 int nn_list_end (int *) ;
 int nn_list_insert (int *,int *,int ) ;

void nn_priolist_activate (struct nn_priolist *self,
    struct nn_priolist_data *data)
{
    struct nn_priolist_slot *slot;

    slot = &self->slots [data->priority - 1];



    if (!nn_list_empty (&slot->pipes)) {
        nn_list_insert (&slot->pipes, &data->item, nn_list_end (&slot->pipes));
        return;
    }



    nn_list_insert (&slot->pipes, &data->item, nn_list_end (&slot->pipes));
    slot->current = data;
    if (self->current == -1) {
        self->current = data->priority;
        return;
    }



    if (self->current > data->priority) {
        self->current = data->priority;
        return;
    }


}
