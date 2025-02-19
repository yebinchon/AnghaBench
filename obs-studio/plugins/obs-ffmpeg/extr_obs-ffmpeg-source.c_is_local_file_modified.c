
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int UNUSED_PARAMETER (int *) ;
 int obs_data_get_bool (int *,char*) ;
 int * obs_properties_get (int *,char*) ;
 int obs_property_set_visible (int *,int) ;

__attribute__((used)) static bool is_local_file_modified(obs_properties_t *props,
       obs_property_t *prop, obs_data_t *settings)
{
 UNUSED_PARAMETER(prop);

 bool enabled = obs_data_get_bool(settings, "is_local_file");
 obs_property_t *input = obs_properties_get(props, "input");
 obs_property_t *input_format =
  obs_properties_get(props, "input_format");
 obs_property_t *local_file = obs_properties_get(props, "local_file");
 obs_property_t *looping = obs_properties_get(props, "looping");
 obs_property_t *buffering = obs_properties_get(props, "buffering_mb");
 obs_property_t *close =
  obs_properties_get(props, "close_when_inactive");
 obs_property_t *seekable = obs_properties_get(props, "seekable");
 obs_property_t *speed = obs_properties_get(props, "speed_percent");
 obs_property_set_visible(input, !enabled);
 obs_property_set_visible(input_format, !enabled);
 obs_property_set_visible(buffering, !enabled);
 obs_property_set_visible(close, enabled);
 obs_property_set_visible(local_file, enabled);
 obs_property_set_visible(looping, enabled);
 obs_property_set_visible(speed, enabled);
 obs_property_set_visible(seekable, !enabled);

 return 1;
}
