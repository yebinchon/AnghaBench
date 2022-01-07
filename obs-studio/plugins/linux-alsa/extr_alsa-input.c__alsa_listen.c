
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_audio {int samples_per_sec; int frames; scalar_t__ timestamp; int speakers; int format; int * data; } ;
struct alsa_data {int rate; scalar_t__ first_ts; int source; int handle; int listen; int period_size; int buffer; int channels; int format; } ;
typedef int snd_pcm_sframes_t ;


 int LOG_DEBUG ;
 int NSEC_PER_SEC ;
 scalar_t__ STARTUP_TIMEOUT_NS ;
 int _alsa_channels_to_obs_speakers (int ) ;
 int _alsa_to_obs_audio_format (int ) ;
 int blog (int ,char*) ;
 int obs_source_output_audio (int ,struct obs_source_audio*) ;
 scalar_t__ os_atomic_load_bool (int *) ;
 int os_atomic_set_bool (int *,int) ;
 scalar_t__ os_gettime_ns () ;
 int pthread_exit (int *) ;
 int snd_pcm_readi (int ,int ,int ) ;
 int snd_pcm_recover (int ,int,int ) ;
 int snd_pcm_wait (int ,int) ;

void *_alsa_listen(void *attr)
{
 struct alsa_data *data = attr;
 struct obs_source_audio out;

 blog(LOG_DEBUG, "Capture thread started.");

 out.data[0] = data->buffer;
 out.format = _alsa_to_obs_audio_format(data->format);
 out.speakers = _alsa_channels_to_obs_speakers(data->channels);
 out.samples_per_sec = data->rate;

 os_atomic_set_bool(&data->listen, 1);

 do {
  snd_pcm_sframes_t frames = snd_pcm_readi(
   data->handle, data->buffer, data->period_size);

  if (!os_atomic_load_bool(&data->listen))
   break;

  if (frames <= 0) {
   frames = snd_pcm_recover(data->handle, frames, 0);
   if (frames <= 0) {
    snd_pcm_wait(data->handle, 100);
    continue;
   }
  }

  out.frames = frames;
  out.timestamp = os_gettime_ns() -
    ((frames * NSEC_PER_SEC) / data->rate);

  if (!data->first_ts)
   data->first_ts = out.timestamp + STARTUP_TIMEOUT_NS;

  if (out.timestamp > data->first_ts)
   obs_source_output_audio(data->source, &out);
 } while (os_atomic_load_bool(&data->listen));

 blog(LOG_DEBUG, "Capture thread is about to exit.");

 pthread_exit(((void*)0));
 return ((void*)0);
}
