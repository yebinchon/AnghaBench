
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {size_t capacity; } ;


 struct obs_data_item* brealloc (struct obs_data_item*,size_t) ;
 int obs_data_item_reattach (struct obs_data_item*,struct obs_data_item*) ;
 size_t obs_data_item_total_size (struct obs_data_item*) ;

__attribute__((used)) static struct obs_data_item *
obs_data_item_ensure_capacity(struct obs_data_item *item)
{
 size_t new_size = obs_data_item_total_size(item);
 struct obs_data_item *new_item;

 if (item->capacity >= new_size)
  return item;

 new_item = brealloc(item, new_size);
 new_item->capacity = new_size;

 obs_data_item_reattach(item, new_item);
 return new_item;
}
