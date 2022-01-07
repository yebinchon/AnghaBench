
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_ins_item {int item; } ;
struct TYPE_2__ {int sync; int connected; } ;


 int nn_list_erase (int *,int *) ;
 int nn_mutex_lock (int *) ;
 int nn_mutex_unlock (int *) ;
 TYPE_1__ self ;

void nn_ins_disconnect (struct nn_ins_item *item)
{
    nn_mutex_lock (&self.sync);
    nn_list_erase (&self.connected, &item->item);
    nn_mutex_unlock (&self.sync);
}
