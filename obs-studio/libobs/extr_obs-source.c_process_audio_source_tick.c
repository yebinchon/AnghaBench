
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int output_flags; } ;
struct TYPE_7__ {int audio_pending; int audio_mixers; int ** audio_output_buf; int audio_buf_mutex; TYPE_4__* audio_input_buf; TYPE_1__ info; } ;
typedef TYPE_2__ obs_source_t ;
struct TYPE_8__ {size_t size; } ;


 size_t MAX_AUDIO_MIXES ;
 int OBS_SOURCE_SUBMIX ;
 int apply_audio_volume (TYPE_2__*,int,size_t,size_t) ;
 int circlebuf_peek_front (TYPE_4__*,int ,size_t) ;
 int memcpy (int ,int ,size_t) ;
 int memset (int ,int ,size_t) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline void process_audio_source_tick(obs_source_t *source,
          uint32_t mixers, size_t channels,
          size_t sample_rate, size_t size)
{
 bool audio_submix = !!(source->info.output_flags & OBS_SOURCE_SUBMIX);

 pthread_mutex_lock(&source->audio_buf_mutex);

 if (source->audio_input_buf[0].size < size) {
  source->audio_pending = 1;
  pthread_mutex_unlock(&source->audio_buf_mutex);
  return;
 }

 for (size_t ch = 0; ch < channels; ch++)
  circlebuf_peek_front(&source->audio_input_buf[ch],
         source->audio_output_buf[0][ch], size);

 pthread_mutex_unlock(&source->audio_buf_mutex);

 for (size_t mix = 1; mix < MAX_AUDIO_MIXES; mix++) {
  uint32_t mix_and_val = (1 << mix);

  if (audio_submix) {
   if (mix > 1)
    break;

   mixers = 1;
   mix_and_val = 1;
  }

  if ((source->audio_mixers & mix_and_val) == 0 ||
      (mixers & mix_and_val) == 0) {
   memset(source->audio_output_buf[mix][0], 0,
          size * channels);
   continue;
  }

  for (size_t ch = 0; ch < channels; ch++)
   memcpy(source->audio_output_buf[mix][ch],
          source->audio_output_buf[0][ch], size);
 }

 if (audio_submix) {
  source->audio_pending = 0;
  return;
 }

 if ((source->audio_mixers & 1) == 0 || (mixers & 1) == 0)
  memset(source->audio_output_buf[0][0], 0, size * channels);

 apply_audio_volume(source, mixers, channels, sample_rate);
 source->audio_pending = 0;
}
