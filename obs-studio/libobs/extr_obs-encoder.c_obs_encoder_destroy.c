
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num; } ;
struct TYPE_6__ {int destroy_on_stop; int init_mutex; int callbacks_mutex; TYPE_1__ callbacks; int context; } ;
typedef TYPE_2__ obs_encoder_t ;


 int obs_context_data_remove (int *) ;
 int obs_encoder_actually_destroy (TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_encoder_destroy(obs_encoder_t *encoder)
{
 if (encoder) {
  bool destroy;

  obs_context_data_remove(&encoder->context);

  pthread_mutex_lock(&encoder->init_mutex);
  pthread_mutex_lock(&encoder->callbacks_mutex);
  destroy = encoder->callbacks.num == 0;
  if (!destroy)
   encoder->destroy_on_stop = 1;
  pthread_mutex_unlock(&encoder->callbacks_mutex);
  pthread_mutex_unlock(&encoder->init_mutex);

  if (destroy)
   obs_encoder_actually_destroy(encoder);
 }
}
