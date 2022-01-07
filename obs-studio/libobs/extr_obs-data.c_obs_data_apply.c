
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct obs_data_item {struct obs_data_item* next; } ;
struct TYPE_5__ {struct obs_data_item* first_item; } ;
typedef TYPE_1__ obs_data_t ;


 int copy_item (TYPE_1__*,struct obs_data_item*) ;

void obs_data_apply(obs_data_t *target, obs_data_t *apply_data)
{
 struct obs_data_item *item;

 if (!target || !apply_data || target == apply_data)
  return;

 item = apply_data->first_item;

 while (item) {
  copy_item(target, item);
  item = item->next;
 }
}
