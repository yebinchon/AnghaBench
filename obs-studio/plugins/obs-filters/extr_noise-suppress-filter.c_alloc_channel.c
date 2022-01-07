
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct noise_suppress_data {int * output_buffers; int * input_buffers; int * states; } ;


 int circlebuf_reserve (int *,size_t) ;
 int speex_preprocess_state_init (int,int ) ;

__attribute__((used)) static inline void alloc_channel(struct noise_suppress_data *ng,
     uint32_t sample_rate, size_t channel,
     size_t frames)
{
 ng->states[channel] =
  speex_preprocess_state_init((int)frames, sample_rate);

 circlebuf_reserve(&ng->input_buffers[channel], frames * sizeof(float));
 circlebuf_reserve(&ng->output_buffers[channel], frames * sizeof(float));
}
