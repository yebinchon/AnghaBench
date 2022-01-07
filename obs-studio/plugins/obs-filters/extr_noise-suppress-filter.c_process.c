
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noise_suppress_data {size_t channels; float** copy_buffers; int frames; int * output_buffers; scalar_t__** segment_buffers; int * states; int suppress_level; int * input_buffers; } ;
typedef scalar_t__ spx_int16_t ;


 int SPEEX_PREPROCESS_SET_NOISE_SUPPRESS ;
 float c_16_to_32 ;
 float c_32_to_16 ;
 int circlebuf_pop_front (int *,float*,int) ;
 int circlebuf_push_back (int *,float*,int) ;
 int speex_preprocess_ctl (int ,int ,int *) ;
 int speex_preprocess_run (int ,scalar_t__*) ;

__attribute__((used)) static inline void process(struct noise_suppress_data *ng)
{

 for (size_t i = 0; i < ng->channels; i++)
  circlebuf_pop_front(&ng->input_buffers[i], ng->copy_buffers[i],
        ng->frames * sizeof(float));


 for (size_t i = 0; i < ng->channels; i++)
  speex_preprocess_ctl(ng->states[i],
         SPEEX_PREPROCESS_SET_NOISE_SUPPRESS,
         &ng->suppress_level);


 for (size_t i = 0; i < ng->channels; i++)
  for (size_t j = 0; j < ng->frames; j++) {
   float s = ng->copy_buffers[i][j];
   if (s > 1.0f)
    s = 1.0f;
   else if (s < -1.0f)
    s = -1.0f;
   ng->segment_buffers[i][j] =
    (spx_int16_t)(s * c_32_to_16);
  }


 for (size_t i = 0; i < ng->channels; i++)
  speex_preprocess_run(ng->states[i], ng->segment_buffers[i]);


 for (size_t i = 0; i < ng->channels; i++)
  for (size_t j = 0; j < ng->frames; j++)
   ng->copy_buffers[i][j] =
    (float)ng->segment_buffers[i][j] / c_16_to_32;


 for (size_t i = 0; i < ng->channels; i++)
  circlebuf_push_back(&ng->output_buffers[i], ng->copy_buffers[i],
        ng->frames * sizeof(float));
}
