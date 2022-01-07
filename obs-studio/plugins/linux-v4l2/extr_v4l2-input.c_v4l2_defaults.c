
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int VIDEO_RANGE_DEFAULT ;
 int obs_data_set_default_bool (int *,char*,int) ;
 int obs_data_set_default_int (int *,char*,int) ;

__attribute__((used)) static void v4l2_defaults(obs_data_t *settings)
{
 obs_data_set_default_int(settings, "input", -1);
 obs_data_set_default_int(settings, "pixelformat", -1);
 obs_data_set_default_int(settings, "standard", -1);
 obs_data_set_default_int(settings, "dv_timing", -1);
 obs_data_set_default_int(settings, "resolution", -1);
 obs_data_set_default_int(settings, "framerate", -1);
 obs_data_set_default_int(settings, "color_range", VIDEO_RANGE_DEFAULT);
 obs_data_set_default_bool(settings, "buffering", 1);
}
