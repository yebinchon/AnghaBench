
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct stinger_info {int media_source; int mix_b; int mix_a; int source; } ;
struct obs_source_audio_mix {TYPE_1__* output; } ;
struct TYPE_2__ {float** data; } ;


 int AUDIO_OUTPUT_FRAMES ;
 size_t MAX_AUDIO_MIXES ;
 int obs_source_audio_pending (int ) ;
 int obs_source_get_audio_mix (int ,struct obs_source_audio_mix*) ;
 scalar_t__ obs_source_get_audio_timestamp (int ) ;
 int obs_transition_audio_render (int ,scalar_t__*,struct obs_source_audio_mix*,int,size_t,size_t,int ,int ) ;

__attribute__((used)) static bool stinger_audio_render(void *data, uint64_t *ts_out,
     struct obs_source_audio_mix *audio,
     uint32_t mixers, size_t channels,
     size_t sample_rate)
{
 struct stinger_info *s = data;
 uint64_t ts = 0;

 if (!obs_source_audio_pending(s->media_source)) {
  ts = obs_source_get_audio_timestamp(s->media_source);
  if (!ts)
   return 0;
 }

 bool success = obs_transition_audio_render(s->source, ts_out, audio,
         mixers, channels,
         sample_rate, s->mix_a,
         s->mix_b);
 if (!ts)
  return success;

 if (!*ts_out || ts < *ts_out)
  *ts_out = ts;

 struct obs_source_audio_mix child_audio;
 obs_source_get_audio_mix(s->media_source, &child_audio);

 for (size_t mix = 0; mix < MAX_AUDIO_MIXES; mix++) {
  if ((mixers & (1 << mix)) == 0)
   continue;

  for (size_t ch = 0; ch < channels; ch++) {
   register float *out = audio->output[mix].data[ch];
   register float *in = child_audio.output[mix].data[ch];
   register float *end = in + AUDIO_OUTPUT_FRAMES;

   while (in < end)
    *(out++) += *(in++);
  }
 }

 return 1;
}
