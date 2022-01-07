
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_data {int * content; } ;
typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_PROPERTY_GROUP ;
 struct group_data* get_type_data (int *,int ) ;

obs_properties_t *obs_property_group_content(obs_property_t *p)
{
 struct group_data *data = get_type_data(p, OBS_PROPERTY_GROUP);
 return data ? data->content : ((void*)0);
}
