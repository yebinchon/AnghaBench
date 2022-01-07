
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_data {int format; } ;
typedef int obs_property_t ;
typedef enum obs_combo_format { ____Placeholder_obs_combo_format } obs_combo_format ;


 int OBS_COMBO_FORMAT_INVALID ;
 struct list_data* get_list_data (int *) ;

enum obs_combo_format obs_property_list_format(obs_property_t *p)
{
 struct list_data *data = get_list_data(p);
 return data ? data->format : OBS_COMBO_FORMAT_INVALID;
}
