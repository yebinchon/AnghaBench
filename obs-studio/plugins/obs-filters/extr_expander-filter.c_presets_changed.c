
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int UNUSED_PARAMETER (int *) ;

__attribute__((used)) static bool presets_changed(obs_properties_t *props, obs_property_t *prop,
       obs_data_t *settings)
{
 UNUSED_PARAMETER(props);
 UNUSED_PARAMETER(prop);
 UNUSED_PARAMETER(settings);
 return 1;
}
