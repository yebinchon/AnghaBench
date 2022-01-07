
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int get_item (int *,char const*) ;
 int obs_data_item_unset_autoselect_value (int ) ;

void obs_data_unset_autoselect_value(obs_data_t *data, const char *name)
{
 obs_data_item_unset_autoselect_value(get_item(data, name));
}
