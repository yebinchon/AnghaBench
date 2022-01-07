
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;


 char const* data_item_get_string (int *,int ) ;
 int get_item_autoselect_data ;

const char *obs_data_item_get_autoselect_string(obs_data_item_t *item)
{
 return data_item_get_string(item, get_item_autoselect_data);
}
