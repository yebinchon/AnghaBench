
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int init_mutex; } ;
typedef TYPE_1__ obs_encoder_t ;


 int obs_encoder_stop_internal (TYPE_1__*,void (*) (void*,struct encoder_packet*),void*) ;
 int obs_encoder_valid (TYPE_1__*,char*) ;
 int obs_ptr_valid (void (*) (void*,struct encoder_packet*),char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_encoder_stop(obs_encoder_t *encoder,
        void (*new_packet)(void *param,
      struct encoder_packet *packet),
        void *param)
{
 bool destroyed;

 if (!obs_encoder_valid(encoder, "obs_encoder_stop"))
  return;
 if (!obs_ptr_valid(new_packet, "obs_encoder_stop"))
  return;

 pthread_mutex_lock(&encoder->init_mutex);
 destroyed = obs_encoder_stop_internal(encoder, new_packet, param);
 if (!destroyed)
  pthread_mutex_unlock(&encoder->init_mutex);
}
