
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_encoder {size_t planes; int * audio_input_buffer; } ;
struct audio_data {scalar_t__* data; } ;


 int circlebuf_push_back (int *,scalar_t__,size_t) ;

__attribute__((used)) static inline void push_back_audio(struct obs_encoder *encoder,
       struct audio_data *data, size_t size,
       size_t offset_size)
{
 size -= offset_size;


 if (size)
  for (size_t i = 0; i < encoder->planes; i++)
   circlebuf_push_back(&encoder->audio_input_buffer[i],
         data->data[i] + offset_size, size);
}
