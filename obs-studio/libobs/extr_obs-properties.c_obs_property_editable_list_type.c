
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct editable_list_data {int type; } ;
typedef int obs_property_t ;
typedef enum obs_editable_list_type { ____Placeholder_obs_editable_list_type } obs_editable_list_type ;


 int OBS_EDITABLE_LIST_TYPE_STRINGS ;
 int OBS_PROPERTY_EDITABLE_LIST ;
 struct editable_list_data* get_type_data (int *,int ) ;

enum obs_editable_list_type obs_property_editable_list_type(obs_property_t *p)
{
 struct editable_list_data *data =
  get_type_data(p, OBS_PROPERTY_EDITABLE_LIST);
 return data ? data->type : OBS_EDITABLE_LIST_TYPE_STRINGS;
}
