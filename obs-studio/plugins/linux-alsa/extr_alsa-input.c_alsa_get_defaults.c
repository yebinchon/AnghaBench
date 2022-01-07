
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_data_set_default_int (int *,char*,int) ;
 int obs_data_set_default_string (int *,char*,char*) ;

void alsa_get_defaults(obs_data_t *settings)
{
 obs_data_set_default_string(settings, "device_id", "default");
 obs_data_set_default_string(settings, "custom_pcm", "default");
 obs_data_set_default_int(settings, "rate", 44100);
}
