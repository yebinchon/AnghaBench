
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int default_size; } ;
typedef int obs_data_array_t ;


 scalar_t__ get_default_data_ptr (struct obs_data_item*) ;

__attribute__((used)) static inline obs_data_array_t *
get_item_default_array(struct obs_data_item *item)
{
 if (!item || !item->default_size)
  return ((void*)0);

 return *(obs_data_array_t **)get_default_data_ptr(item);
}
