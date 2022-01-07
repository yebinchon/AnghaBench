
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;
typedef int obs_data_array_t ;


 int * data_item_get_array (int *,int ) ;
 int get_item_array ;

obs_data_array_t *obs_data_item_get_default_array(obs_data_item_t *item)
{
 return data_item_get_array(item, get_item_array);
}
