
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_data {int type; } ;
typedef int obs_property_t ;
typedef enum obs_text_type { ____Placeholder_obs_text_type } obs_text_type ;


 int OBS_PROPERTY_TEXT ;
 int OBS_TEXT_DEFAULT ;
 struct text_data* get_type_data (int *,int ) ;

enum obs_text_type obs_property_text_type(obs_property_t *p)
{
 struct text_data *data = get_type_data(p, OBS_PROPERTY_TEXT);
 return data ? data->type : OBS_TEXT_DEFAULT;
}
