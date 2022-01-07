
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct obs_source_audio_mix {TYPE_1__* output; } ;
struct TYPE_9__ {int data; } ;
struct TYPE_8__ {int (* audio_render ) (int ,int *,struct obs_source_audio_mix*,int,size_t,size_t) ;} ;
struct TYPE_10__ {int audio_mixers; int audio_pending; int ** audio_output_buf; int audio_ts; TYPE_3__ context; TYPE_2__ info; } ;
typedef TYPE_4__ obs_source_t ;
struct TYPE_7__ {int * data; } ;


 int AUDIO_OUTPUT_FRAMES ;
 size_t MAX_AUDIO_MIXES ;
 int apply_audio_volume (TYPE_4__*,int,size_t,size_t) ;
 int memset (int ,int ,int) ;
 int stub1 (int ,int *,struct obs_source_audio_mix*,int,size_t,size_t) ;

__attribute__((used)) static void custom_audio_render(obs_source_t *source, uint32_t mixers,
    size_t channels, size_t sample_rate)
{
 struct obs_source_audio_mix audio_data;
 bool success;
 uint64_t ts;

 for (size_t mix = 0; mix < MAX_AUDIO_MIXES; mix++) {
  for (size_t ch = 0; ch < channels; ch++) {
   audio_data.output[mix].data[ch] =
    source->audio_output_buf[mix][ch];
  }

  if ((source->audio_mixers & mixers & (1 << mix)) != 0) {
   memset(source->audio_output_buf[mix][0], 0,
          sizeof(float) * AUDIO_OUTPUT_FRAMES * channels);
  }
 }

 success = source->info.audio_render(source->context.data, &ts,
         &audio_data, mixers, channels,
         sample_rate);
 source->audio_ts = success ? ts : 0;
 source->audio_pending = !success;

 if (!success || !source->audio_ts || !mixers)
  return;

 for (size_t mix = 0; mix < MAX_AUDIO_MIXES; mix++) {
  uint32_t mix_bit = 1 << mix;

  if ((mixers & mix_bit) == 0)
   continue;

  if ((source->audio_mixers & mix_bit) == 0) {
   memset(source->audio_output_buf[mix][0], 0,
          sizeof(float) * AUDIO_OUTPUT_FRAMES * channels);
  }
 }

 apply_audio_volume(source, mixers, channels, sample_rate);
}
