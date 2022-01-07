
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_volmeter {float* magnitude; float* peak; int mutex; int cur_db; } ;
struct audio_data {int dummy; } ;
typedef int obs_source_t ;


 int MAX_AUDIO_CHANNELS ;
 int UNUSED_PARAMETER (int *) ;
 float db_to_mul (int ) ;
 float mul_to_db (float) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int signal_levels_updated (struct obs_volmeter*,float*,float*,float*) ;
 int volmeter_process_audio_data (struct obs_volmeter*,struct audio_data const*) ;

__attribute__((used)) static void volmeter_source_data_received(void *vptr, obs_source_t *source,
       const struct audio_data *data,
       bool muted)
{
 struct obs_volmeter *volmeter = (struct obs_volmeter *)vptr;
 float mul;
 float magnitude[MAX_AUDIO_CHANNELS];
 float peak[MAX_AUDIO_CHANNELS];
 float input_peak[MAX_AUDIO_CHANNELS];

 pthread_mutex_lock(&volmeter->mutex);

 volmeter_process_audio_data(volmeter, data);



 mul = muted ? 0.0f : db_to_mul(volmeter->cur_db);
 for (int channel_nr = 0; channel_nr < MAX_AUDIO_CHANNELS;
      channel_nr++) {
  magnitude[channel_nr] =
   mul_to_db(volmeter->magnitude[channel_nr] * mul);
  peak[channel_nr] = mul_to_db(volmeter->peak[channel_nr] * mul);



  input_peak[channel_nr] = mul_to_db(volmeter->peak[channel_nr]);
 }

 pthread_mutex_unlock(&volmeter->mutex);

 signal_levels_updated(volmeter, magnitude, peak, input_peak);

 UNUSED_PARAMETER(source);
}
