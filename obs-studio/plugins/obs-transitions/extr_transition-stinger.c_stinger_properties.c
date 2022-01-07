
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int FADE_STYLE_CROSS_FADE ;
 int FADE_STYLE_FADE_OUT_FADE_IN ;
 int FILE_FILTER ;
 int OBS_COMBO_FORMAT_INT ;
 int OBS_COMBO_TYPE_LIST ;
 int OBS_MONITORING_TYPE_MONITOR_AND_OUTPUT ;
 int OBS_MONITORING_TYPE_MONITOR_ONLY ;
 int OBS_MONITORING_TYPE_NONE ;
 int OBS_PATH_FILE ;
 int OBS_PROPERTIES_DEFER_UPDATE ;
 int TIMING_FRAME ;
 int TIMING_TIME ;
 int UNUSED_PARAMETER (void*) ;
 int obs_module_text (char*) ;
 int obs_properties_add_int (int *,char*,int ,int ,int,int) ;
 int * obs_properties_add_list (int *,char*,int ,int ,int ) ;
 int obs_properties_add_path (int *,char*,int ,int ,int ,int *) ;
 int * obs_properties_create () ;
 int obs_properties_set_flags (int *,int ) ;
 int obs_property_list_add_int (int *,int ,int ) ;
 int obs_property_set_modified_callback (int *,int ) ;
 int transition_point_type_modified ;

__attribute__((used)) static obs_properties_t *stinger_properties(void *data)
{
 obs_properties_t *ppts = obs_properties_create();

 obs_properties_set_flags(ppts, OBS_PROPERTIES_DEFER_UPDATE);

 obs_properties_add_path(ppts, "path", obs_module_text("VideoFile"),
    OBS_PATH_FILE, FILE_FILTER, ((void*)0));
 obs_property_t *p = obs_properties_add_list(
  ppts, "tp_type", obs_module_text("TransitionPointType"),
  OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
 obs_property_list_add_int(p, obs_module_text("TransitionPointTypeTime"),
      TIMING_TIME);
 obs_property_list_add_int(
  p, obs_module_text("TransitionPointTypeFrame"), TIMING_FRAME);

 obs_property_set_modified_callback(p, transition_point_type_modified);

 obs_properties_add_int(ppts, "transition_point",
          obs_module_text("TransitionPoint"), 0, 120000,
          1);

 obs_property_t *monitor_list = obs_properties_add_list(
  ppts, "audio_monitoring", obs_module_text("AudioMonitoring"),
  OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
 obs_property_list_add_int(monitor_list,
      obs_module_text("AudioMonitoring.None"),
      OBS_MONITORING_TYPE_NONE);
 obs_property_list_add_int(
  monitor_list, obs_module_text("AudioMonitoring.MonitorOnly"),
  OBS_MONITORING_TYPE_MONITOR_ONLY);
 obs_property_list_add_int(monitor_list,
      obs_module_text("AudioMonitoring.Both"),
      OBS_MONITORING_TYPE_MONITOR_AND_OUTPUT);

 obs_property_t *audio_fade_style = obs_properties_add_list(
  ppts, "audio_fade_style", obs_module_text("AudioFadeStyle"),
  OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
 obs_property_list_add_int(
  audio_fade_style,
  obs_module_text("AudioFadeStyle.FadeOutFadeIn"),
  FADE_STYLE_FADE_OUT_FADE_IN);
 obs_property_list_add_int(audio_fade_style,
      obs_module_text("AudioFadeStyle.CrossFade"),
      FADE_STYLE_CROSS_FADE);

 UNUSED_PARAMETER(data);
 return ppts;
}
