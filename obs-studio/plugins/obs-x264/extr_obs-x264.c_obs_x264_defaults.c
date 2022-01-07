
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_data_set_default_bool (int *,char*,int) ;
 int obs_data_set_default_int (int *,char*,int) ;
 int obs_data_set_default_string (int *,char*,char*) ;

__attribute__((used)) static void obs_x264_defaults(obs_data_t *settings)
{
 obs_data_set_default_int(settings, "bitrate", 2500);
 obs_data_set_default_bool(settings, "use_bufsize", 0);
 obs_data_set_default_int(settings, "buffer_size", 2500);
 obs_data_set_default_int(settings, "keyint_sec", 0);
 obs_data_set_default_int(settings, "crf", 23);



 obs_data_set_default_string(settings, "rate_control", "CBR");

 obs_data_set_default_string(settings, "preset", "veryfast");
 obs_data_set_default_string(settings, "profile", "");
 obs_data_set_default_string(settings, "tune", "");
 obs_data_set_default_string(settings, "x264opts", "");
}
