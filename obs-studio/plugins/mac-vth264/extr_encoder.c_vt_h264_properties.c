
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int TEXT_BFRAMES ;
 int TEXT_BITRATE ;
 int TEXT_KEYINT_SEC ;
 int TEXT_MAX_BITRATE ;
 int TEXT_MAX_BITRATE_WINDOW ;
 char* TEXT_NONE ;
 int TEXT_PROFILE ;
 int TEXT_USE_MAX_BITRATE ;
 int UNUSED_PARAMETER (void*) ;
 int limit_bitrate_modified ;
 int * obs_properties_add_bool (int *,char*,int ) ;
 int obs_properties_add_float (int *,char*,int ,float,float,float) ;
 int * obs_properties_add_int (int *,char*,int ,int,int,int) ;
 int * obs_properties_add_list (int *,char*,int ,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_int_set_suffix (int *,char*) ;
 int obs_property_list_add_string (int *,char*,char*) ;
 int obs_property_set_modified_callback (int *,int ) ;

__attribute__((used)) static obs_properties_t *vt_h264_properties(void *unused)
{
 UNUSED_PARAMETER(unused);

 obs_properties_t *props = obs_properties_create();
 obs_property_t *p;

 p = obs_properties_add_int(props, "bitrate", TEXT_BITRATE, 50, 10000000,
       50);
 obs_property_int_set_suffix(p, " Kbps");

 p = obs_properties_add_bool(props, "limit_bitrate",
        TEXT_USE_MAX_BITRATE);
 obs_property_set_modified_callback(p, limit_bitrate_modified);

 p = obs_properties_add_int(props, "max_bitrate", TEXT_MAX_BITRATE, 50,
       10000000, 50);
 obs_property_int_set_suffix(p, " Kbps");

 obs_properties_add_float(props, "max_bitrate_window",
     TEXT_MAX_BITRATE_WINDOW, 0.10f, 10.0f, 0.25f);

 obs_properties_add_int(props, "keyint_sec", TEXT_KEYINT_SEC, 0, 20, 1);

 p = obs_properties_add_list(props, "profile", TEXT_PROFILE,
        OBS_COMBO_TYPE_LIST,
        OBS_COMBO_FORMAT_STRING);
 obs_property_list_add_string(p, TEXT_NONE, "");
 obs_property_list_add_string(p, "baseline", "baseline");
 obs_property_list_add_string(p, "main", "main");
 obs_property_list_add_string(p, "high", "high");

 obs_properties_add_bool(props, "bframes", TEXT_BFRAMES);

 return props;
}
