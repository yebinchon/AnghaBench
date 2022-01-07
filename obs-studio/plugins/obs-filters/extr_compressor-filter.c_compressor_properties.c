
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sidechain_prop_info {int * member_1; int * member_0; } ;
struct compressor_data {int context; } ;
typedef int obs_source_t ;
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
 int S_OUTPUT_GAIN ;
 int S_RATIO ;
 int S_RELEASE_TIME ;
 int S_SIDECHAIN_SOURCE ;
 int S_THRESHOLD ;
 int TEXT_ATTACK_TIME ;
 int TEXT_OUTPUT_GAIN ;
 int TEXT_RATIO ;
 int TEXT_RELEASE_TIME ;
 int TEXT_SIDECHAIN_SOURCE ;
 int TEXT_THRESHOLD ;
 int UNUSED_PARAMETER (void*) ;
 int add_sources ;
 int obs_enum_sources (int ,struct sidechain_prop_info*) ;
 int * obs_filter_get_parent (int ) ;
 int obs_module_text (char*) ;
 int * obs_properties_add_float_slider (int *,int ,int ,int ,int ,double) ;
 int * obs_properties_add_int_slider (int *,int ,int ,int ,int ,int) ;
 int * obs_properties_add_list (int *,int ,int ,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_float_set_suffix (int *,char*) ;
 int obs_property_int_set_suffix (int *,char*) ;
 int obs_property_list_add_string (int *,int ,char*) ;

__attribute__((used)) static obs_properties_t *compressor_properties(void *data)
{
 struct compressor_data *cd = data;
 obs_properties_t *props = obs_properties_create();
 obs_source_t *parent = ((void*)0);
 obs_property_t *p;

 if (cd)
  parent = obs_filter_get_parent(cd->context);

 p = obs_properties_add_float_slider(props, S_RATIO, TEXT_RATIO,
         MIN_RATIO, MAX_RATIO, 0.5);
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

 obs_property_t *sources = obs_properties_add_list(
  props, S_SIDECHAIN_SOURCE, TEXT_SIDECHAIN_SOURCE,
  OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_STRING);

 obs_property_list_add_string(sources, obs_module_text("None"), "none");

 struct sidechain_prop_info info = {sources, parent};
 obs_enum_sources(add_sources, &info);

 UNUSED_PARAMETER(data);
 return props;
}
