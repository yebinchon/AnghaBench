
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct editable_list_data {char const* default_path; } ;
typedef int obs_property_t ;


 int OBS_PROPERTY_EDITABLE_LIST ;
 struct editable_list_data* get_type_data (int *,int ) ;

const char *obs_property_editable_list_default_path(obs_property_t *p)
{
 struct editable_list_data *data =
  get_type_data(p, OBS_PROPERTY_EDITABLE_LIST);
 return data ? data->default_path : ((void*)0);
}
