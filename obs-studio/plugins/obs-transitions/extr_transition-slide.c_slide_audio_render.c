
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct slide_info {int source; } ;
struct obs_source_audio_mix {int dummy; } ;


 int mix_a ;
 int mix_b ;
 int obs_transition_audio_render (int ,int *,struct obs_source_audio_mix*,int ,size_t,size_t,int ,int ) ;

bool slide_audio_render(void *data, uint64_t *ts_out,
   struct obs_source_audio_mix *audio, uint32_t mixers,
   size_t channels, size_t sample_rate)
{
 struct slide_info *slide = data;
 return obs_transition_audio_render(slide->source, ts_out, audio, mixers,
        channels, sample_rate, mix_a, mix_b);
}
