
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int dummy; } ;
typedef int obs_data_array_t ;


 scalar_t__ get_item_data (struct obs_data_item*) ;

__attribute__((used)) static inline obs_data_array_t *get_item_array(struct obs_data_item *item)
{
 obs_data_array_t **array;

 if (!item)
  return ((void*)0);

 array = (obs_data_array_t **)get_item_data(item);
 return array ? *array : ((void*)0);
}
