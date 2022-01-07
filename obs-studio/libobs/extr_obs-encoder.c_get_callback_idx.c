
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct encoder_callback* array; } ;
struct obs_encoder {TYPE_1__ callbacks; } ;
struct encoder_callback {void (* new_packet ) (void*,struct encoder_packet*) ;void* param; } ;


 size_t DARRAY_INVALID ;

__attribute__((used)) static inline size_t
get_callback_idx(const struct obs_encoder *encoder,
   void (*new_packet)(void *param, struct encoder_packet *packet),
   void *param)
{
 for (size_t i = 0; i < encoder->callbacks.num; i++) {
  struct encoder_callback *cb = encoder->callbacks.array + i;

  if (cb->new_packet == new_packet && cb->param == param)
   return i;
 }

 return DARRAY_INVALID;
}
