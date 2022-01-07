
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct slideshow {int dummy; } ;
struct obs_source_audio_mix {int dummy; } ;
typedef int obs_source_t ;


 int * get_transition (struct slideshow*) ;
 int obs_source_release (int *) ;
 int ss_audio_render_ (int *,int *,struct obs_source_audio_mix*,int ,size_t,size_t) ;

__attribute__((used)) static bool ss_audio_render(void *data, uint64_t *ts_out,
       struct obs_source_audio_mix *audio_output,
       uint32_t mixers, size_t channels,
       size_t sample_rate)
{
 struct slideshow *ss = data;
 obs_source_t *transition = get_transition(ss);
 bool success;

 if (!transition)
  return 0;

 success = ss_audio_render_(transition, ts_out, audio_output, mixers,
       channels, sample_rate);

 obs_source_release(transition);
 return success;
}
