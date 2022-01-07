
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int dummy; } ;
typedef int obs_data_t ;


 int ** get_item_data (struct obs_data_item*) ;

__attribute__((used)) static inline obs_data_t *get_item_obj(struct obs_data_item *item)
{
 if (!item)
  return ((void*)0);

 obs_data_t **data = get_item_data(item);
 if (!data)
  return ((void*)0);

 return *data;
}
