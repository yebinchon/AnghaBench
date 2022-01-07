
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int UNUSED_PARAMETER (int *) ;
 char* obs_data_get_string (int *,char*) ;
 int * obs_properties_get (int *,char*) ;
 int obs_property_modified (int *,int *) ;
 int obs_property_set_visible (int *,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bool alsa_devices_changed(obs_properties_t *props, obs_property_t *p,
     obs_data_t *settings)
{
 UNUSED_PARAMETER(p);
 bool visible = 0;
 const char *device_id = obs_data_get_string(settings, "device_id");

 if (strcmp(device_id, "__custom__") == 0)
  visible = 1;

 obs_property_t *custom_pcm = obs_properties_get(props, "custom_pcm");

 obs_property_set_visible(custom_pcm, visible);
 obs_property_modified(custom_pcm, settings);

 return 1;
}
