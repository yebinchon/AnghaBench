
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** audio_buffer; } ;
typedef TYPE_1__ obs_output_t ;


 size_t MAX_AUDIO_MIXES ;
 size_t MAX_AV_PLANES ;
 int circlebuf_free (int *) ;

__attribute__((used)) static inline void clear_audio_buffers(obs_output_t *output)
{
 for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
  for (size_t j = 0; j < MAX_AV_PLANES; j++) {
   circlebuf_free(&output->audio_buffer[i][j]);
  }
 }
}
