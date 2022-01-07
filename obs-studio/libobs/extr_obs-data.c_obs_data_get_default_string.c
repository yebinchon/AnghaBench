
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int get_item (int *,char const*) ;
 char const* obs_data_item_get_default_string (int ) ;

const char *obs_data_get_default_string(obs_data_t *data, const char *name)
{
 return obs_data_item_get_default_string(get_item(data, name));
}
