
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gain_data {int multiple; int channels; } ;
typedef int obs_data_t ;


 int S_GAIN_DB ;
 int audio_output_get_channels (int ) ;
 int db_to_mul (float) ;
 double obs_data_get_double (int *,int ) ;
 int obs_get_audio () ;

__attribute__((used)) static void gain_update(void *data, obs_data_t *s)
{
 struct gain_data *gf = data;
 double val = obs_data_get_double(s, S_GAIN_DB);
 gf->channels = audio_output_get_channels(obs_get_audio());
 gf->multiple = db_to_mul((float)val);
}
