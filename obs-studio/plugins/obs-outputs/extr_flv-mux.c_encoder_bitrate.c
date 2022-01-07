
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_encoder_t ;
typedef int obs_data_t ;


 double obs_data_get_double (int *,char*) ;
 int obs_data_release (int *) ;
 int * obs_encoder_get_settings (int *) ;

__attribute__((used)) static inline double encoder_bitrate(obs_encoder_t *encoder)
{
 obs_data_t *settings = obs_encoder_get_settings(encoder);
 double bitrate = obs_data_get_double(settings, "bitrate");

 obs_data_release(settings);
 return bitrate;
}
