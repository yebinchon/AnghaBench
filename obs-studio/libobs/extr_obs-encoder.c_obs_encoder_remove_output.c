
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {int dummy; } ;
struct obs_encoder {int outputs_mutex; int outputs; } ;


 int da_erase_item (int ,struct obs_output**) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_encoder_remove_output(struct obs_encoder *encoder,
          struct obs_output *output)
{
 if (!encoder)
  return;

 pthread_mutex_lock(&encoder->outputs_mutex);
 da_erase_item(encoder->outputs, &output);
 pthread_mutex_unlock(&encoder->outputs_mutex);
}
