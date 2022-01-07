
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_data_set_default_bool (int *,char*,int) ;
 int obs_data_set_default_int (int *,char*,int) ;
 int obs_data_set_default_string (int *,char*,char*) ;

void nvenc_defaults(obs_data_t *settings)
{
 obs_data_set_default_int(settings, "bitrate", 2500);
 obs_data_set_default_int(settings, "max_bitrate", 5000);
 obs_data_set_default_int(settings, "keyint_sec", 0);
 obs_data_set_default_int(settings, "cqp", 20);
 obs_data_set_default_string(settings, "rate_control", "CBR");
 obs_data_set_default_string(settings, "preset", "hq");
 obs_data_set_default_string(settings, "profile", "high");
 obs_data_set_default_bool(settings, "psycho_aq", 1);
 obs_data_set_default_int(settings, "gpu", 0);
 obs_data_set_default_int(settings, "bf", 2);
}
