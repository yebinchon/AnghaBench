
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int SETTING_BRIGHTNESS ;
 int SETTING_COLOR_TYPE ;
 int SETTING_CONTRAST ;
 int SETTING_GAMMA ;
 int SETTING_KEY_COLOR ;
 int SETTING_OPACITY ;
 int SETTING_SIMILARITY ;
 int SETTING_SMOOTHNESS ;
 int SETTING_SPILL ;
 int TEXT_BRIGHTNESS ;
 int TEXT_COLOR_TYPE ;
 int TEXT_CONTRAST ;
 int TEXT_GAMMA ;
 int TEXT_KEY_COLOR ;
 int TEXT_OPACITY ;
 int TEXT_SIMILARITY ;
 int TEXT_SMOOTHNESS ;
 int TEXT_SPILL ;
 int UNUSED_PARAMETER (void*) ;
 int key_type_changed ;
 int obs_module_text (char*) ;
 int obs_properties_add_color (int *,int ,int ) ;
 int obs_properties_add_float_slider (int *,int ,int ,double,double,double) ;
 int obs_properties_add_int_slider (int *,int ,int ,int,int,int) ;
 int * obs_properties_add_list (int *,int ,int ,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_list_add_string (int *,int ,char*) ;
 int obs_property_set_modified_callback (int *,int ) ;

__attribute__((used)) static obs_properties_t *chroma_key_properties(void *data)
{
 obs_properties_t *props = obs_properties_create();

 obs_property_t *p = obs_properties_add_list(props, SETTING_COLOR_TYPE,
          TEXT_COLOR_TYPE,
          OBS_COMBO_TYPE_LIST,
          OBS_COMBO_FORMAT_STRING);
 obs_property_list_add_string(p, obs_module_text("Green"), "green");
 obs_property_list_add_string(p, obs_module_text("Blue"), "blue");
 obs_property_list_add_string(p, obs_module_text("Magenta"), "magenta");
 obs_property_list_add_string(p, obs_module_text("Custom"), "custom");

 obs_property_set_modified_callback(p, key_type_changed);

 obs_properties_add_color(props, SETTING_KEY_COLOR, TEXT_KEY_COLOR);
 obs_properties_add_int_slider(props, SETTING_SIMILARITY,
          TEXT_SIMILARITY, 1, 1000, 1);
 obs_properties_add_int_slider(props, SETTING_SMOOTHNESS,
          TEXT_SMOOTHNESS, 1, 1000, 1);
 obs_properties_add_int_slider(props, SETTING_SPILL, TEXT_SPILL, 1, 1000,
          1);

 obs_properties_add_int_slider(props, SETTING_OPACITY, TEXT_OPACITY, 0,
          100, 1);
 obs_properties_add_float_slider(props, SETTING_CONTRAST, TEXT_CONTRAST,
     -1.0, 1.0, 0.01);
 obs_properties_add_float_slider(props, SETTING_BRIGHTNESS,
     TEXT_BRIGHTNESS, -1.0, 1.0, 0.01);
 obs_properties_add_float_slider(props, SETTING_GAMMA, TEXT_GAMMA, -1.0,
     1.0, 0.01);

 UNUSED_PARAMETER(data);
 return props;
}
