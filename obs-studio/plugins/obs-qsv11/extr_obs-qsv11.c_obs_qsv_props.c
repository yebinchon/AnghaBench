
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 char* TEXT_ACCURACY ;
 char* TEXT_ASYNC_DEPTH ;
 char* TEXT_BFRAMES ;
 char* TEXT_CONVERGENCE ;
 char* TEXT_ICQ_QUALITY ;
 char* TEXT_KEYINT_SEC ;
 char* TEXT_LA_DEPTH ;
 char* TEXT_MAX_BITRATE ;
 int TEXT_MBBRC ;
 int TEXT_PROFILE ;
 int TEXT_RATE_CONTROL ;
 int TEXT_SPEED ;
 char* TEXT_TARGET_BITRATE ;
 int UNUSED_PARAMETER (void*) ;
 int add_rate_controls (int *,int ) ;
 int add_strings (int *,int ) ;
 scalar_t__ is_skl_or_greater_platform () ;
 int obs_properties_add_bool (int *,char*,int ) ;
 int * obs_properties_add_int (int *,char*,char*,int,int,int) ;
 int * obs_properties_add_list (int *,char*,int ,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_int_set_suffix (int *,char*) ;
 int obs_property_set_modified_callback (int *,int ) ;
 int qsv_profile_names ;
 int qsv_ratecontrols ;
 int qsv_usage_names ;
 int rate_control_modified ;

__attribute__((used)) static obs_properties_t *obs_qsv_props(void *unused)
{
 UNUSED_PARAMETER(unused);

 obs_properties_t *props = obs_properties_create();
 obs_property_t *list;

 list = obs_properties_add_list(props, "target_usage", TEXT_SPEED,
           OBS_COMBO_TYPE_LIST,
           OBS_COMBO_FORMAT_STRING);
 add_strings(list, qsv_usage_names);

 list = obs_properties_add_list(props, "profile", TEXT_PROFILE,
           OBS_COMBO_TYPE_LIST,
           OBS_COMBO_FORMAT_STRING);
 add_strings(list, qsv_profile_names);

 obs_properties_add_int(props, "keyint_sec", TEXT_KEYINT_SEC, 1, 20, 1);
 obs_properties_add_int(props, "async_depth", TEXT_ASYNC_DEPTH, 1, 7, 1);

 list = obs_properties_add_list(props, "rate_control", TEXT_RATE_CONTROL,
           OBS_COMBO_TYPE_LIST,
           OBS_COMBO_FORMAT_STRING);
 add_rate_controls(list, qsv_ratecontrols);
 obs_property_set_modified_callback(list, rate_control_modified);

 obs_property_t *p;
 p = obs_properties_add_int(props, "bitrate", TEXT_TARGET_BITRATE, 50,
       10000000, 50);
 obs_property_int_set_suffix(p, " Kbps");

 p = obs_properties_add_int(props, "max_bitrate", TEXT_MAX_BITRATE, 50,
       10000000, 50);
 obs_property_int_set_suffix(p, " Kbps");

 obs_properties_add_int(props, "accuracy", TEXT_ACCURACY, 0, 10000, 1);
 obs_properties_add_int(props, "convergence", TEXT_CONVERGENCE, 0, 10,
          1);
 obs_properties_add_int(props, "qpi", "QPI", 1, 51, 1);
 obs_properties_add_int(props, "qpp", "QPP", 1, 51, 1);
 obs_properties_add_int(props, "qpb", "QPB", 1, 51, 1);
 obs_properties_add_int(props, "icq_quality", TEXT_ICQ_QUALITY, 1, 51,
          1);
 obs_properties_add_int(props, "la_depth", TEXT_LA_DEPTH, 10, 100, 1);
 obs_properties_add_int(props, "bframes", TEXT_BFRAMES, 0, 3, 1);

 if (is_skl_or_greater_platform())
  obs_properties_add_bool(props, "mbbrc", TEXT_MBBRC);

 return props;
}
