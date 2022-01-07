
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noise_suppress_data {size_t channels; int info_buffer; int * output_buffers; int * input_buffers; } ;


 int clear_circlebuf (int *) ;

__attribute__((used)) static void reset_data(struct noise_suppress_data *ng)
{
 for (size_t i = 0; i < ng->channels; i++) {
  clear_circlebuf(&ng->input_buffers[i]);
  clear_circlebuf(&ng->output_buffers[i]);
 }

 clear_circlebuf(&ng->info_buffer);
}
