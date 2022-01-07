
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source {float*** audio_output_buf; } ;


 int AUDIO_OUTPUT_FRAMES ;
 int MAX_AUDIO_CHANNELS ;
 int MAX_AUDIO_MIXES ;
 float* bzalloc (size_t) ;

__attribute__((used)) static void allocate_audio_output_buffer(struct obs_source *source)
{
 size_t size = sizeof(float) * AUDIO_OUTPUT_FRAMES * MAX_AUDIO_CHANNELS *
        MAX_AUDIO_MIXES;
 float *ptr = bzalloc(size);

 for (size_t mix = 0; mix < MAX_AUDIO_MIXES; mix++) {
  size_t mix_pos = mix * AUDIO_OUTPUT_FRAMES * MAX_AUDIO_CHANNELS;

  for (size_t i = 0; i < MAX_AUDIO_CHANNELS; i++) {
   source->audio_output_buf[mix][i] =
    ptr + mix_pos + AUDIO_OUTPUT_FRAMES * i;
  }
 }
}
