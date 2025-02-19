
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct obs_audio_data {scalar_t__ frames; scalar_t__ data; } ;
struct expander_data {int dummy; } ;


 int analyze_envelope (struct expander_data*,float**,scalar_t__ const) ;
 int process_expansion (struct expander_data*,float**,scalar_t__ const) ;

__attribute__((used)) static struct obs_audio_data *
expander_filter_audio(void *data, struct obs_audio_data *audio)
{
 struct expander_data *cd = data;

 const uint32_t num_samples = audio->frames;
 if (num_samples == 0)
  return audio;

 float **samples = (float **)audio->data;

 analyze_envelope(cd, samples, num_samples);
 process_expansion(cd, samples, num_samples);
 return audio;
}
