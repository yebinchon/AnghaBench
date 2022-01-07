
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_encoder {size_t planes; int framesize_bytes; int * audio_output_buffer; } ;


 int bmalloc (int ) ;
 int free_audio_buffers (struct obs_encoder*) ;

__attribute__((used)) static inline void reset_audio_buffers(struct obs_encoder *encoder)
{
 free_audio_buffers(encoder);

 for (size_t i = 0; i < encoder->planes; i++)
  encoder->audio_output_buffer[i] =
   bmalloc(encoder->framesize_bytes);
}
