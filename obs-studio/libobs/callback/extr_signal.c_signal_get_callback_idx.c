
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct signal_callback* array; } ;
struct signal_info {TYPE_1__ callbacks; } ;
struct signal_callback {scalar_t__ callback; void* data; } ;
typedef scalar_t__ signal_callback_t ;


 size_t DARRAY_INVALID ;

__attribute__((used)) static inline size_t signal_get_callback_idx(struct signal_info *si,
          signal_callback_t callback,
          void *data)
{
 for (size_t i = 0; i < si->callbacks.num; i++) {
  struct signal_callback *sc = si->callbacks.array + i;

  if (sc->callback == callback && sc->data == data)
   return i;
 }

 return DARRAY_INVALID;
}
