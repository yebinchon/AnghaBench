
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {int has_uint32; int uinteger; TYPE_1__* pcg_state; } ;
typedef TYPE_2__ pcg64_state ;
typedef int pcg128_t ;
struct TYPE_4__ {int state; int inc; } ;



extern void pcg64_set_state(pcg64_state *state, uint64_t *state_arr,
                            int has_uint32, uint32_t uinteger) {







  state->pcg_state->state = (((pcg128_t)state_arr[0]) << 64) | state_arr[1];
  state->pcg_state->inc = (((pcg128_t)state_arr[2]) << 64) | state_arr[3];






  state->has_uint32 = has_uint32;
  state->uinteger = uinteger;
}
