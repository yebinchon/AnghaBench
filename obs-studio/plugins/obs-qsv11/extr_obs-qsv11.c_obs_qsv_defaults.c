
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_data_set_default_bool (int *,char*,int) ;
 int obs_data_set_default_int (int *,char*,int) ;
 int obs_data_set_default_string (int *,char*,char*) ;

__attribute__((used)) static void obs_qsv_defaults(obs_data_t *settings)
{
 obs_data_set_default_string(settings, "target_usage", "balanced");
 obs_data_set_default_int(settings, "bitrate", 2500);
 obs_data_set_default_int(settings, "max_bitrate", 3000);
 obs_data_set_default_string(settings, "profile", "high");
 obs_data_set_default_int(settings, "async_depth", 4);
 obs_data_set_default_string(settings, "rate_control", "CBR");

 obs_data_set_default_int(settings, "accuracy", 1000);
 obs_data_set_default_int(settings, "convergence", 1);
 obs_data_set_default_int(settings, "qpi", 23);
 obs_data_set_default_int(settings, "qpp", 23);
 obs_data_set_default_int(settings, "qpb", 23);
 obs_data_set_default_int(settings, "icq_quality", 23);
 obs_data_set_default_int(settings, "la_depth", 15);

 obs_data_set_default_int(settings, "keyint_sec", 3);
 obs_data_set_default_int(settings, "bframes", 3);
 obs_data_set_default_bool(settings, "mbbrc", 1);
}
