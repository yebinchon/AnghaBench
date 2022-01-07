
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int add_preset (char*) ;
 int add_profile (char*) ;
 char* obs_module_text (char*) ;
 int * obs_properties_add_bool (int *,char*,char*) ;
 int * obs_properties_add_int (int *,char*,char*,int,int,int) ;
 int * obs_properties_add_list (int *,char*,char*,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_int_set_suffix (int *,char*) ;
 int obs_property_list_add_string (int *,char*,char*) ;
 int obs_property_set_long_description (int *,char*) ;
 int obs_property_set_modified_callback (int *,int ) ;
 int rate_control_modified ;

obs_properties_t *nvenc_properties_internal(bool ffmpeg)
{
 obs_properties_t *props = obs_properties_create();
 obs_property_t *p;

 p = obs_properties_add_list(props, "rate_control",
        obs_module_text("RateControl"),
        OBS_COMBO_TYPE_LIST,
        OBS_COMBO_FORMAT_STRING);
 obs_property_list_add_string(p, "CBR", "CBR");
 obs_property_list_add_string(p, "CQP", "CQP");
 obs_property_list_add_string(p, "VBR", "VBR");
 obs_property_list_add_string(p, obs_module_text("Lossless"),
         "lossless");

 obs_property_set_modified_callback(p, rate_control_modified);

 p = obs_properties_add_int(props, "bitrate", obs_module_text("Bitrate"),
       50, 300000, 50);
 obs_property_int_set_suffix(p, " Kbps");
 p = obs_properties_add_int(props, "max_bitrate",
       obs_module_text("MaxBitrate"), 50, 300000,
       50);
 obs_property_int_set_suffix(p, " Kbps");

 obs_properties_add_int(props, "cqp", obs_module_text("NVENC.CQLevel"),
          1, 30, 1);

 obs_properties_add_int(props, "keyint_sec",
          obs_module_text("KeyframeIntervalSec"), 0, 10,
          1);

 p = obs_properties_add_list(props, "preset", obs_module_text("Preset"),
        OBS_COMBO_TYPE_LIST,
        OBS_COMBO_FORMAT_STRING);




 obs_property_list_add_string(p, obs_module_text("NVENC.Preset." "mq"), "mq");
 obs_property_list_add_string(p, obs_module_text("NVENC.Preset." "hq"), "hq");
 obs_property_list_add_string(p, obs_module_text("NVENC.Preset." "default"), "default");
 obs_property_list_add_string(p, obs_module_text("NVENC.Preset." "hp"), "hp");
 obs_property_list_add_string(p, obs_module_text("NVENC.Preset." "ll"), "ll");
 obs_property_list_add_string(p, obs_module_text("NVENC.Preset." "llhq"), "llhq");
 obs_property_list_add_string(p, obs_module_text("NVENC.Preset." "llhp"), "llhp");


 p = obs_properties_add_list(props, "profile",
        obs_module_text("Profile"),
        OBS_COMBO_TYPE_LIST,
        OBS_COMBO_FORMAT_STRING);


 obs_property_list_add_string(p, "high", "high");
 obs_property_list_add_string(p, "main", "main");
 obs_property_list_add_string(p, "baseline", "baseline");


 if (!ffmpeg) {
  p = obs_properties_add_bool(props, "lookahead",
         obs_module_text("NVENC.LookAhead"));
  obs_property_set_long_description(
   p, obs_module_text("NVENC.LookAhead.ToolTip"));

  p = obs_properties_add_bool(
   props, "psycho_aq",
   obs_module_text("NVENC.PsychoVisualTuning"));
  obs_property_set_long_description(
   p, obs_module_text("NVENC.PsychoVisualTuning.ToolTip"));
 }

 obs_properties_add_int(props, "gpu", obs_module_text("GPU"), 0, 8, 1);

 obs_properties_add_int(props, "bf", obs_module_text("BFrames"), 0, 4,
          1);

 return props;
}
