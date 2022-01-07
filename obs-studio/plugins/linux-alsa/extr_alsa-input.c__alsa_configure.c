
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alsa_data {int channels; int period_size; int sample_size; scalar_t__ buffer; int format; int handle; int device; int rate; } ;
typedef int snd_pcm_hw_params_t ;


 int LOG_ERROR ;
 int LOG_INFO ;
 int SND_PCM_ACCESS_RW_INTERLEAVED ;
 int SND_PCM_FORMAT_S16 ;
 int bfree (scalar_t__) ;
 int blog (int ,char*,int ,...) ;
 scalar_t__ bzalloc (int) ;
 int snd_pcm_format_physical_width (int ) ;
 int snd_pcm_hw_params (int ,int *) ;
 int snd_pcm_hw_params_alloca (int **) ;
 int snd_pcm_hw_params_any (int ,int *) ;
 int snd_pcm_hw_params_get_channels (int *,int*) ;
 int snd_pcm_hw_params_get_period_size (int *,int*,int*) ;
 int snd_pcm_hw_params_set_access (int ,int *,int ) ;
 int snd_pcm_hw_params_set_channels_near (int ,int *,int*) ;
 int snd_pcm_hw_params_set_format (int ,int *,int ) ;
 int snd_pcm_hw_params_set_rate_near (int ,int *,int *,int ) ;
 int snd_strerror (int) ;

bool _alsa_configure(struct alsa_data *data)
{
 snd_pcm_hw_params_t *hwparams;
 int err;
 int dir;

 snd_pcm_hw_params_alloca(&hwparams);

 err = snd_pcm_hw_params_any(data->handle, hwparams);
 if (err < 0) {
  blog(LOG_ERROR, "snd_pcm_hw_params_any failed: %s",
       snd_strerror(err));
  return 0;
 }

 err = snd_pcm_hw_params_set_access(data->handle, hwparams,
        SND_PCM_ACCESS_RW_INTERLEAVED);
 if (err < 0) {
  blog(LOG_ERROR, "snd_pcm_hw_params_set_access failed: %s",
       snd_strerror(err));
  return 0;
 }

 data->format = SND_PCM_FORMAT_S16;
 err = snd_pcm_hw_params_set_format(data->handle, hwparams,
        data->format);
 if (err < 0) {
  blog(LOG_ERROR, "snd_pcm_hw_params_set_format failed: %s",
       snd_strerror(err));
  return 0;
 }

 err = snd_pcm_hw_params_set_rate_near(data->handle, hwparams,
           &data->rate, 0);
 if (err < 0) {
  blog(LOG_ERROR, "snd_pcm_hw_params_set_rate_near failed: %s",
       snd_strerror(err));
  return 0;
 }
 blog(LOG_INFO, "PCM '%s' rate set to %d", data->device, data->rate);

 err = snd_pcm_hw_params_get_channels(hwparams, &data->channels);
 if (err < 0)
  data->channels = 2;

 err = snd_pcm_hw_params_set_channels_near(data->handle, hwparams,
        &data->channels);
 if (err < 0) {
  blog(LOG_ERROR,
       "snd_pcm_hw_params_set_channels_near failed: %s",
       snd_strerror(err));
  return 0;
 }
 blog(LOG_INFO, "PCM '%s' channels set to %d", data->device,
      data->channels);

 err = snd_pcm_hw_params(data->handle, hwparams);
 if (err < 0) {
  blog(LOG_ERROR, "snd_pcm_hw_params failed: %s",
       snd_strerror(err));
  return 0;
 }

 err = snd_pcm_hw_params_get_period_size(hwparams, &data->period_size,
      &dir);
 if (err < 0) {
  blog(LOG_ERROR, "snd_pcm_hw_params_get_period_size failed: %s",
       snd_strerror(err));
  return 0;
 }

 data->sample_size =
  (data->channels * snd_pcm_format_physical_width(data->format)) /
  8;

 if (data->buffer)
  bfree(data->buffer);
 data->buffer = bzalloc(data->period_size * data->sample_size);

 return 1;
}
