
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct obs_source_audio {scalar_t__ timestamp; int frames; int ** data; int format; int samples_per_sec; int speakers; } ;
struct jack_data {unsigned int channels; int jack_mutex; int source; int jack_client; int * jack_ports; } ;
typedef int jack_nframes_t ;
typedef int jack_default_audio_sample_t ;


 int AUDIO_FORMAT_FLOAT_PLANAR ;
 int jack_channels_to_obs_speakers (unsigned int) ;
 scalar_t__ jack_frames_to_time (int ,int ) ;
 int jack_get_sample_rate (int ) ;
 scalar_t__ jack_port_get_buffer (int ,int ) ;
 int obs_source_output_audio (int ,struct obs_source_audio*) ;
 scalar_t__ os_gettime_ns () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int jack_process_callback(jack_nframes_t nframes, void *arg)
{
 struct jack_data *data = (struct jack_data *)arg;
 if (data == 0)
  return 0;

 pthread_mutex_lock(&data->jack_mutex);

 struct obs_source_audio out;
 out.speakers = jack_channels_to_obs_speakers(data->channels);
 out.samples_per_sec = jack_get_sample_rate(data->jack_client);

 out.format = AUDIO_FORMAT_FLOAT_PLANAR;

 for (unsigned int i = 0; i < data->channels; ++i) {
  jack_default_audio_sample_t *jack_buffer =
   (jack_default_audio_sample_t *)jack_port_get_buffer(
    data->jack_ports[i], nframes);
  out.data[i] = (uint8_t *)jack_buffer;
 }

 out.frames = nframes;
 out.timestamp = os_gettime_ns() -
   jack_frames_to_time(data->jack_client, nframes);

 obs_source_output_audio(data->source, &out);
 pthread_mutex_unlock(&data->jack_mutex);
 return 0;
}
