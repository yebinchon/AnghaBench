
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {int has_uint32; int uinteger; TYPE_1__* pcg_state; } ;
typedef TYPE_2__ pcg64_state ;
struct TYPE_4__ {int state; int inc; } ;



extern void pcg64_get_state(pcg64_state *state, uint64_t *state_arr,
                            int *has_uint32, uint32_t *uinteger) {







  state_arr[0] = (uint64_t)(state->pcg_state->state >> 64);
  state_arr[1] = (uint64_t)(state->pcg_state->state & 0xFFFFFFFFFFFFFFFFULL);
  state_arr[2] = (uint64_t)(state->pcg_state->inc >> 64);
  state_arr[3] = (uint64_t)(state->pcg_state->inc & 0xFFFFFFFFFFFFFFFFULL);






  has_uint32[0] = state->has_uint32;
  uinteger[0] = state->uinteger;
}
