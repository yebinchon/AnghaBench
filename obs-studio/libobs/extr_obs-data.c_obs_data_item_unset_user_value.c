
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ autoselect_size; scalar_t__ default_len; scalar_t__ default_size; scalar_t__ data_len; scalar_t__ data_size; } ;
typedef TYPE_1__ obs_data_item_t ;


 void* get_default_data_ptr (TYPE_1__*) ;
 int item_data_release (TYPE_1__*) ;
 int move_data (TYPE_1__*,void*,TYPE_1__*,void*,scalar_t__) ;

void obs_data_item_unset_user_value(obs_data_item_t *item)
{
 if (!item || !item->data_size)
  return;

 void *old_non_user_data = get_default_data_ptr(item);

 item_data_release(item);
 item->data_size = 0;
 item->data_len = 0;

 if (item->default_size || item->autoselect_size)
  move_data(item, old_non_user_data, item,
     get_default_data_ptr(item),
     item->default_len + item->autoselect_size);
}
