
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
struct TYPE_5__ {int (* encoded_packet ) (int ,int *) ;} ;
struct obs_output {int interleaved_mutex; TYPE_3__ context; TYPE_2__ info; } ;
struct TYPE_4__ {size_t num; struct obs_output** array; } ;
struct obs_encoder {int initialized; int callbacks_mutex; int callbacks; int outputs_mutex; TYPE_1__ outputs; } ;


 int da_free (int ) ;
 int obs_output_force_stop (struct obs_output*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int remove_connection (struct obs_encoder*,int) ;
 int stub1 (int ,int *) ;

void full_stop(struct obs_encoder *encoder)
{
 if (encoder) {
  pthread_mutex_lock(&encoder->outputs_mutex);
  for (size_t i = 0; i < encoder->outputs.num; i++) {
   struct obs_output *output = encoder->outputs.array[i];
   obs_output_force_stop(output);

   pthread_mutex_lock(&output->interleaved_mutex);
   output->info.encoded_packet(output->context.data, ((void*)0));
   pthread_mutex_unlock(&output->interleaved_mutex);
  }
  pthread_mutex_unlock(&encoder->outputs_mutex);

  pthread_mutex_lock(&encoder->callbacks_mutex);
  da_free(encoder->callbacks);
  pthread_mutex_unlock(&encoder->callbacks_mutex);

  remove_connection(encoder, 0);
  encoder->initialized = 0;
 }
}
