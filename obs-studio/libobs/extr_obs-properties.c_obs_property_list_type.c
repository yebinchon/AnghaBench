
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_data {int type; } ;
typedef int obs_property_t ;
typedef enum obs_combo_type { ____Placeholder_obs_combo_type } obs_combo_type ;


 int OBS_COMBO_TYPE_INVALID ;
 struct list_data* get_list_data (int *) ;

enum obs_combo_type obs_property_list_type(obs_property_t *p)
{
 struct list_data *data = get_list_data(p);
 return data ? data->type : OBS_COMBO_TYPE_INVALID;
}
