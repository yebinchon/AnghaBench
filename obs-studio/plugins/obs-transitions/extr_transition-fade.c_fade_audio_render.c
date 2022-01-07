
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct obs_source_audio_mix {int dummy; } ;
struct fade_info {int source; } ;


 int mix_a ;
 int mix_b ;
 int obs_transition_audio_render (int ,int *,struct obs_source_audio_mix*,int ,size_t,size_t,int ,int ) ;

__attribute__((used)) static bool fade_audio_render(void *data, uint64_t *ts_out,
         struct obs_source_audio_mix *audio,
         uint32_t mixers, size_t channels,
         size_t sample_rate)
{
 struct fade_info *fade = data;
 return obs_transition_audio_render(fade->source, ts_out, audio, mixers,
        channels, sample_rate, mix_a, mix_b);
}
