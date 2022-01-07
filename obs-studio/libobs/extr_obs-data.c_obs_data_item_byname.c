
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int ref; } ;
typedef int obs_data_t ;
typedef struct obs_data_item obs_data_item_t ;


 struct obs_data_item* get_item (int *,char const*) ;
 int os_atomic_inc_long (int *) ;

obs_data_item_t *obs_data_item_byname(obs_data_t *data, const char *name)
{
 if (!data)
  return ((void*)0);

 struct obs_data_item *item = get_item(data, name);
 if (item)
  os_atomic_inc_long(&item->ref);
 return item;
}
