
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noise_suppress_data {size_t channels; int output_data; int info_buffer; struct noise_suppress_data** copy_buffers; struct noise_suppress_data** segment_buffers; int * output_buffers; int * input_buffers; int * states; } ;


 int bfree (struct noise_suppress_data*) ;
 int circlebuf_free (int *) ;
 int da_free (int ) ;
 int speex_preprocess_state_destroy (int ) ;

__attribute__((used)) static void noise_suppress_destroy(void *data)
{
 struct noise_suppress_data *ng = data;

 for (size_t i = 0; i < ng->channels; i++) {
  speex_preprocess_state_destroy(ng->states[i]);
  circlebuf_free(&ng->input_buffers[i]);
  circlebuf_free(&ng->output_buffers[i]);
 }

 bfree(ng->segment_buffers[0]);
 bfree(ng->copy_buffers[0]);
 circlebuf_free(&ng->info_buffer);
 da_free(ng->output_data);
 bfree(ng);
}
