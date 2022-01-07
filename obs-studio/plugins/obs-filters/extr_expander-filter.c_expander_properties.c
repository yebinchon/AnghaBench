
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int MAX_ATK_MS ;
 int MAX_OUTPUT_GAIN_DB ;
 int MAX_RATIO ;
 int MAX_RLS_MS ;
 int MAX_THRESHOLD_DB ;
 int MIN_ATK_RLS_MS ;
 int MIN_OUTPUT_GAIN_DB ;
 int MIN_RATIO ;
 int MIN_THRESHOLD_DB ;
 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int S_ATTACK_TIME ;
 int S_DETECTOR ;
 int S_OUTPUT_GAIN ;
 int S_PRESETS ;
 int S_RATIO ;
 int S_RELEASE_TIME ;
 int S_THRESHOLD ;
 int TEXT_ATTACK_TIME ;
 int TEXT_DETECTOR ;
 int TEXT_OUTPUT_GAIN ;
 int TEXT_PEAK ;
 int TEXT_PRESETS ;
 int TEXT_PRESETS_EXP ;
 int TEXT_PRESETS_GATE ;
 int TEXT_RATIO ;
 int TEXT_RELEASE_TIME ;
 int TEXT_RMS ;
 int TEXT_THRESHOLD ;
 int UNUSED_PARAMETER (void*) ;
 int * obs_properties_add_float_slider (int *,int ,int ,int ,int ,double) ;
 int * obs_properties_add_int_slider (int *,int ,int ,int ,int ,int) ;
 int * obs_properties_add_list (int *,int ,int ,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_float_set_suffix (int *,char*) ;
 int obs_property_int_set_suffix (int *,char*) ;
 int obs_property_list_add_string (int *,int ,char*) ;
 int obs_property_set_modified_callback (int *,int ) ;
 int presets_changed ;

__attribute__((used)) static obs_properties_t *expander_properties(void *data)
{
 obs_properties_t *props = obs_properties_create();
 obs_property_t *p;

 obs_property_t *presets = obs_properties_add_list(
  props, S_PRESETS, TEXT_PRESETS, OBS_COMBO_TYPE_LIST,
  OBS_COMBO_FORMAT_STRING);
 obs_property_list_add_string(presets, TEXT_PRESETS_EXP, "expander");
 obs_property_list_add_string(presets, TEXT_PRESETS_GATE, "gate");
 obs_property_set_modified_callback(presets, presets_changed);
 p = obs_properties_add_float_slider(props, S_RATIO, TEXT_RATIO,
         MIN_RATIO, MAX_RATIO, 0.1);
 obs_property_float_set_suffix(p, ":1");
 p = obs_properties_add_float_slider(props, S_THRESHOLD, TEXT_THRESHOLD,
         MIN_THRESHOLD_DB, MAX_THRESHOLD_DB,
         0.1);
 obs_property_float_set_suffix(p, " dB");
 p = obs_properties_add_int_slider(props, S_ATTACK_TIME,
       TEXT_ATTACK_TIME, MIN_ATK_RLS_MS,
       MAX_ATK_MS, 1);
 obs_property_int_set_suffix(p, " ms");
 p = obs_properties_add_int_slider(props, S_RELEASE_TIME,
       TEXT_RELEASE_TIME, MIN_ATK_RLS_MS,
       MAX_RLS_MS, 1);
 obs_property_int_set_suffix(p, " ms");
 p = obs_properties_add_float_slider(props, S_OUTPUT_GAIN,
         TEXT_OUTPUT_GAIN,
         MIN_OUTPUT_GAIN_DB,
         MAX_OUTPUT_GAIN_DB, 0.1);
 obs_property_float_set_suffix(p, " dB");
 obs_property_t *detect = obs_properties_add_list(
  props, S_DETECTOR, TEXT_DETECTOR, OBS_COMBO_TYPE_LIST,
  OBS_COMBO_FORMAT_STRING);
 obs_property_list_add_string(detect, TEXT_RMS, "RMS");
 obs_property_list_add_string(detect, TEXT_PEAK, "peak");

 UNUSED_PARAMETER(data);
 return props;
}
