
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int obs_module_text (char*) ;
 int * obs_properties_add_list (int *,char*,int ,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_list_insert_string (int *,int ,int ,char*) ;
 size_t obs_property_list_item_count (int *) ;
 int pulse_get_sink_info_list (int ,void*) ;
 int pulse_get_source_info_list (int ,void*) ;
 int pulse_init () ;
 int pulse_input_info ;
 int pulse_output_info ;
 int pulse_unref () ;

__attribute__((used)) static obs_properties_t *pulse_properties(bool input)
{
 obs_properties_t *props = obs_properties_create();
 obs_property_t *devices = obs_properties_add_list(
  props, "device_id", obs_module_text("Device"),
  OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_STRING);

 pulse_init();
 if (input)
  pulse_get_source_info_list(pulse_input_info, (void *)devices);
 else
  pulse_get_sink_info_list(pulse_output_info, (void *)devices);
 pulse_unref();

 size_t count = obs_property_list_item_count(devices);

 if (count > 0)
  obs_property_list_insert_string(
   devices, 0, obs_module_text("Default"), "default");

 return props;
}
