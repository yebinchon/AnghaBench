
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ obs_data_item_t ;


 int obs_data_item_destroy (TYPE_1__*) ;
 long os_atomic_dec_long (int *) ;

void obs_data_item_release(obs_data_item_t **item)
{
 if (item && *item) {
  long ref = os_atomic_dec_long(&(*item)->ref);
  if (!ref) {
   obs_data_item_destroy(*item);
   *item = ((void*)0);
  }
 }
}
