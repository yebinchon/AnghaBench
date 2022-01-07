
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_data {char const* filter; } ;
typedef int obs_property_t ;


 int OBS_PROPERTY_PATH ;
 struct path_data* get_type_data (int *,int ) ;

const char *obs_property_path_filter(obs_property_t *p)
{
 struct path_data *data = get_type_data(p, OBS_PROPERTY_PATH);
 return data ? data->filter : ((void*)0);
}
