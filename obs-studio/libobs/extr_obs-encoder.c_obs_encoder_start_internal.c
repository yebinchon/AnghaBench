
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct encoder_callback {int member_0; void (* member_1 ) (void*,struct encoder_packet*) ;void* member_2; } ;
struct TYPE_9__ {scalar_t__ num; } ;
struct TYPE_7__ {int data; } ;
struct TYPE_8__ {scalar_t__ cur_pts; int pause; int paused; int callbacks_mutex; TYPE_5__ callbacks; TYPE_1__ context; } ;
typedef TYPE_2__ obs_encoder_t ;


 size_t DARRAY_INVALID ;
 int add_connection (TYPE_2__*) ;
 int da_push_back (TYPE_5__,struct encoder_callback*) ;
 size_t get_callback_idx (TYPE_2__*,void (*) (void*,struct encoder_packet*),void*) ;
 int os_atomic_set_bool (int *,int) ;
 int pause_reset (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline void obs_encoder_start_internal(
 obs_encoder_t *encoder,
 void (*new_packet)(void *param, struct encoder_packet *packet),
 void *param)
{
 struct encoder_callback cb = {0, new_packet, param};
 bool first = 0;

 if (!encoder->context.data)
  return;

 pthread_mutex_lock(&encoder->callbacks_mutex);

 first = (encoder->callbacks.num == 0);

 size_t idx = get_callback_idx(encoder, new_packet, param);
 if (idx == DARRAY_INVALID)
  da_push_back(encoder->callbacks, &cb);

 pthread_mutex_unlock(&encoder->callbacks_mutex);

 if (first) {
  os_atomic_set_bool(&encoder->paused, 0);
  pause_reset(&encoder->pause);

  encoder->cur_pts = 0;
  add_connection(encoder);
 }
}
