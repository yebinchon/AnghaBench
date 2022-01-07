
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_encoder {size_t planes; int * audio_input_buffer; } ;


 int circlebuf_free (int *) ;

__attribute__((used)) static void clear_audio(struct obs_encoder *encoder)
{
 for (size_t i = 0; i < encoder->planes; i++)
  circlebuf_free(&encoder->audio_input_buffer[i]);
}
