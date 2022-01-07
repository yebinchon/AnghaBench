
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef float (* obs_transition_audio_mix_callback_t ) (void*,float) ;
struct TYPE_5__ {void* data; } ;
struct TYPE_6__ {TYPE_1__ context; } ;
typedef TYPE_2__ obs_source_t ;


 float get_sample_time (TYPE_2__*,size_t,size_t,int ) ;

__attribute__((used)) static inline void mix_child(obs_source_t *transition, float *out, float *in,
        size_t count, size_t sample_rate, uint64_t ts,
        obs_transition_audio_mix_callback_t mix)
{
 void *context_data = transition->context.data;

 for (size_t i = 0; i < count; i++) {
  float t = get_sample_time(transition, sample_rate, i, ts);
  out[i] += in[i] * mix(context_data, t);
 }
}
