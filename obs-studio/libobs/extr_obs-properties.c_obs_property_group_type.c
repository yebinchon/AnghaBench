
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_data {int type; } ;
typedef int obs_property_t ;
typedef enum obs_group_type { ____Placeholder_obs_group_type } obs_group_type ;


 int OBS_COMBO_INVALID ;
 int OBS_PROPERTY_GROUP ;
 struct group_data* get_type_data (int *,int ) ;

enum obs_group_type obs_property_group_type(obs_property_t *p)
{
 struct group_data *data = get_type_data(p, OBS_PROPERTY_GROUP);
 return data ? data->type : OBS_COMBO_INVALID;
}
