
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;
typedef int obs_data_t ;


 int obs_properties_apply_settings_internal (int *,int *,int *) ;

void obs_properties_apply_settings(obs_properties_t *props,
       obs_data_t *settings)
{
 if (!props)
  return;

 obs_properties_apply_settings_internal(props, settings, props);
}
