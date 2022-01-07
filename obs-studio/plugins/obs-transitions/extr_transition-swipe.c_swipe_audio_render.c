
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct swipe_info {int source; } ;
struct obs_source_audio_mix {int dummy; } ;


 int mix_a ;
 int mix_b ;
 int obs_transition_audio_render (int ,int *,struct obs_source_audio_mix*,int ,size_t,size_t,int ,int ) ;

__attribute__((used)) static bool swipe_audio_render(void *data, uint64_t *ts_out,
          struct obs_source_audio_mix *audio,
          uint32_t mixers, size_t channels,
          size_t sample_rate)
{
 struct swipe_info *swipe = data;
 return obs_transition_audio_render(swipe->source, ts_out, audio, mixers,
        channels, sample_rate, mix_a, mix_b);
}
