
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_audio_data {size_t frames; scalar_t__* data; } ;
struct gain_data {size_t channels; float multiple; } ;



__attribute__((used)) static struct obs_audio_data *gain_filter_audio(void *data,
      struct obs_audio_data *audio)
{
 struct gain_data *gf = data;
 const size_t channels = gf->channels;
 float **adata = (float **)audio->data;
 const float multiple = gf->multiple;

 for (size_t c = 0; c < channels; c++) {
  if (audio->data[c]) {
   for (size_t i = 0; i < audio->frames; i++) {
    adata[c][i] *= multiple;
   }
  }
 }

 return audio;
}
