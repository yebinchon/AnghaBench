
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ num; } ;
struct TYPE_7__ {int initialized; int init_mutex; scalar_t__ destroy_on_stop; int callbacks_mutex; TYPE_6__ callbacks; } ;
typedef TYPE_1__ obs_encoder_t ;


 size_t DARRAY_INVALID ;
 int da_erase (TYPE_6__,size_t) ;
 size_t get_callback_idx (TYPE_1__*,void (*) (void*,struct encoder_packet*),void*) ;
 int obs_encoder_actually_destroy (TYPE_1__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int remove_connection (TYPE_1__*,int) ;

__attribute__((used)) static inline bool obs_encoder_stop_internal(
 obs_encoder_t *encoder,
 void (*new_packet)(void *param, struct encoder_packet *packet),
 void *param)
{
 bool last = 0;
 size_t idx;

 pthread_mutex_lock(&encoder->callbacks_mutex);

 idx = get_callback_idx(encoder, new_packet, param);
 if (idx != DARRAY_INVALID) {
  da_erase(encoder->callbacks, idx);
  last = (encoder->callbacks.num == 0);
 }

 pthread_mutex_unlock(&encoder->callbacks_mutex);

 if (last) {
  remove_connection(encoder, 1);
  encoder->initialized = 0;

  if (encoder->destroy_on_stop) {
   pthread_mutex_unlock(&encoder->init_mutex);
   obs_encoder_actually_destroy(encoder);
   return 1;
  }
 }

 return 0;
}
