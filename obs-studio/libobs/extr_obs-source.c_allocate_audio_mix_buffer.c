
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source {float** audio_mix_buf; } ;


 int AUDIO_OUTPUT_FRAMES ;
 int MAX_AUDIO_CHANNELS ;
 float* bzalloc (size_t) ;

__attribute__((used)) static void allocate_audio_mix_buffer(struct obs_source *source)
{
 size_t size = sizeof(float) * AUDIO_OUTPUT_FRAMES * MAX_AUDIO_CHANNELS;
 float *ptr = bzalloc(size);

 for (size_t i = 0; i < MAX_AUDIO_CHANNELS; i++) {
  source->audio_mix_buf[i] = ptr + AUDIO_OUTPUT_FRAMES * i;
 }
}
