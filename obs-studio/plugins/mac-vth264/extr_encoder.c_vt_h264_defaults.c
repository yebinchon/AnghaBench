
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_data_set_default_bool (int *,char*,int) ;
 int obs_data_set_default_double (int *,char*,float) ;
 int obs_data_set_default_int (int *,char*,int) ;
 int obs_data_set_default_string (int *,char*,char*) ;

__attribute__((used)) static void vt_h264_defaults(obs_data_t *settings)
{
 obs_data_set_default_int(settings, "bitrate", 2500);
 obs_data_set_default_bool(settings, "limit_bitrate", 0);
 obs_data_set_default_int(settings, "max_bitrate", 2500);
 obs_data_set_default_double(settings, "max_bitrate_window", 1.5f);
 obs_data_set_default_int(settings, "keyint_sec", 0);
 obs_data_set_default_string(settings, "profile", "");
 obs_data_set_default_bool(settings, "bframes", 1);
}
