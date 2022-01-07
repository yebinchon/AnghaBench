
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int OBS_TEXT_DEFAULT ;
 int TEXT_BITRATE ;
 int TEXT_BUF_SIZE ;
 int TEXT_CRF ;
 int TEXT_CUSTOM_BUF ;
 int TEXT_KEYINT_SEC ;
 char* TEXT_NONE ;
 int TEXT_PRESET ;
 int TEXT_PROFILE ;
 int TEXT_RATE_CONTROL ;
 int TEXT_TUNE ;
 int TEXT_VFR ;
 int TEXT_X264_OPTS ;
 int UNUSED_PARAMETER (void*) ;
 int add_strings (int *,int ) ;
 int * obs_properties_add_bool (int *,char*,int ) ;
 int * obs_properties_add_int (int *,char*,int ,int,int,int) ;
 int * obs_properties_add_list (int *,char*,int ,int ,int ) ;
 int obs_properties_add_text (int *,char*,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_int_set_suffix (int *,char*) ;
 int obs_property_list_add_string (int *,char*,char*) ;
 int obs_property_set_modified_callback (int *,int ) ;
 int rate_control_modified ;
 int use_bufsize_modified ;
 int x264_preset_names ;
 int x264_tune_names ;

__attribute__((used)) static obs_properties_t *obs_x264_props(void *unused)
{
 UNUSED_PARAMETER(unused);

 obs_properties_t *props = obs_properties_create();
 obs_property_t *list;
 obs_property_t *p;

 list = obs_properties_add_list(props, "rate_control", TEXT_RATE_CONTROL,
           OBS_COMBO_TYPE_LIST,
           OBS_COMBO_FORMAT_STRING);
 obs_property_list_add_string(list, "CBR", "CBR");
 obs_property_list_add_string(list, "ABR", "ABR");
 obs_property_list_add_string(list, "VBR", "VBR");
 obs_property_list_add_string(list, "CRF", "CRF");

 obs_property_set_modified_callback(list, rate_control_modified);

 p = obs_properties_add_int(props, "bitrate", TEXT_BITRATE, 50, 10000000,
       50);
 obs_property_int_set_suffix(p, " Kbps");

 p = obs_properties_add_bool(props, "use_bufsize", TEXT_CUSTOM_BUF);
 obs_property_set_modified_callback(p, use_bufsize_modified);
 obs_properties_add_int(props, "buffer_size", TEXT_BUF_SIZE, 0, 10000000,
          1);

 obs_properties_add_int(props, "crf", TEXT_CRF, 0, 51, 1);

 obs_properties_add_int(props, "keyint_sec", TEXT_KEYINT_SEC, 0, 20, 1);

 list = obs_properties_add_list(props, "preset", TEXT_PRESET,
           OBS_COMBO_TYPE_LIST,
           OBS_COMBO_FORMAT_STRING);
 add_strings(list, x264_preset_names);

 list = obs_properties_add_list(props, "profile", TEXT_PROFILE,
           OBS_COMBO_TYPE_LIST,
           OBS_COMBO_FORMAT_STRING);
 obs_property_list_add_string(list, TEXT_NONE, "");
 obs_property_list_add_string(list, "baseline", "baseline");
 obs_property_list_add_string(list, "main", "main");
 obs_property_list_add_string(list, "high", "high");

 list = obs_properties_add_list(props, "tune", TEXT_TUNE,
           OBS_COMBO_TYPE_LIST,
           OBS_COMBO_FORMAT_STRING);
 obs_property_list_add_string(list, TEXT_NONE, "");
 add_strings(list, x264_tune_names);





 obs_properties_add_text(props, "x264opts", TEXT_X264_OPTS,
    OBS_TEXT_DEFAULT);

 return props;
}
