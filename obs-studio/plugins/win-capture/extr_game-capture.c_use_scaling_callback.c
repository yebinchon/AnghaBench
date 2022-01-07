
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int SETTING_FORCE_SCALING ;
 int SETTING_SCALE_RES ;
 int obs_data_get_bool (int *,int ) ;
 int * obs_properties_get (int *,int ) ;
 int obs_property_set_enabled (int *,int) ;

__attribute__((used)) static bool use_scaling_callback(obs_properties_t *ppts, obs_property_t *p,
     obs_data_t *settings)
{
 bool use_scale = obs_data_get_bool(settings, SETTING_FORCE_SCALING);

 p = obs_properties_get(ppts, SETTING_SCALE_RES);
 obs_property_set_enabled(p, use_scale);
 return 1;
}
