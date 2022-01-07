
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_audio_data {int frames; scalar_t__ data; } ;


 size_t MAX_AV_PLANES ;
 int UNUSED_PARAMETER (void*) ;

__attribute__((used)) static struct obs_audio_data *
invert_polarity_filter_audio(void *unused, struct obs_audio_data *audio)
{
 float **adata = (float **)audio->data;

 for (size_t c = 0; c < MAX_AV_PLANES; c++) {
  register float *channel_data = adata[c];
  register float *channel_end = channel_data + audio->frames;

  if (!channel_data)
   break;

  while (channel_data < channel_end) {
   *(channel_data++) *= -1.0f;
  }
 }

 UNUSED_PARAMETER(unused);
 return audio;
}
