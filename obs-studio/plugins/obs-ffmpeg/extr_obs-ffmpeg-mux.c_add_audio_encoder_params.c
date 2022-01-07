
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; int member_0; } ;
typedef int obs_encoder_t ;
typedef int obs_data_t ;
typedef int audio_t ;


 scalar_t__ audio_output_get_channels (int *) ;
 int dstr_catf (struct dstr*,char*,int ,int,int,int) ;
 int dstr_copy (struct dstr*,int ) ;
 int dstr_free (struct dstr*) ;
 int dstr_replace (struct dstr*,char*,char*) ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 int obs_data_release (int *) ;
 int obs_encoder_get_name (int *) ;
 scalar_t__ obs_encoder_get_sample_rate (int *) ;
 int * obs_encoder_get_settings (int *) ;
 int * obs_get_audio () ;

__attribute__((used)) static void add_audio_encoder_params(struct dstr *cmd, obs_encoder_t *aencoder)
{
 obs_data_t *settings = obs_encoder_get_settings(aencoder);
 int bitrate = (int)obs_data_get_int(settings, "bitrate");
 audio_t *audio = obs_get_audio();
 struct dstr name = {0};

 obs_data_release(settings);

 dstr_copy(&name, obs_encoder_get_name(aencoder));
 dstr_replace(&name, "\"", "\"\"");

 dstr_catf(cmd, "\"%s\" %d %d %d ", name.array, bitrate,
    (int)obs_encoder_get_sample_rate(aencoder),
    (int)audio_output_get_channels(audio));

 dstr_free(&name);
}
