
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ autoselect_size; } ;
typedef TYPE_1__ obs_data_item_t ;


 int item_autoselect_data_release (TYPE_1__*) ;

void obs_data_item_unset_autoselect_value(obs_data_item_t *item)
{
 if (!item || !item->autoselect_size)
  return;

 item_autoselect_data_release(item);
 item->autoselect_size = 0;
}
