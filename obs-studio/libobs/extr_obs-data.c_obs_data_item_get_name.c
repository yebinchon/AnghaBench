
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;


 char const* get_item_name (int *) ;

const char *obs_data_item_get_name(obs_data_item_t *item)
{
 if (!item)
  return ((void*)0);

 return get_item_name(item);
}
