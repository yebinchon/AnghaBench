
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_encoder {int ** audio_output_buffer; int * audio_input_buffer; } ;


 size_t MAX_AV_PLANES ;
 int bfree (int *) ;
 int circlebuf_free (int *) ;

__attribute__((used)) static inline void free_audio_buffers(struct obs_encoder *encoder)
{
 for (size_t i = 0; i < MAX_AV_PLANES; i++) {
  circlebuf_free(&encoder->audio_input_buffer[i]);
  bfree(encoder->audio_output_buffer[i]);
  encoder->audio_output_buffer[i] = ((void*)0);
 }
}
