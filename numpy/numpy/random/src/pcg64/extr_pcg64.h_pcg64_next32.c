
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int has_uint32; scalar_t__ uinteger; int pcg_state; } ;
typedef TYPE_1__ pcg64_state ;


 int pcg64_random_r (int ) ;

__attribute__((used)) static inline uint32_t pcg64_next32(pcg64_state *state) {
  uint64_t next;
  if (state->has_uint32) {
    state->has_uint32 = 0;
    return state->uinteger;
  }
  next = pcg64_random_r(state->pcg_state);
  state->has_uint32 = 1;
  state->uinteger = (uint32_t)(next >> 32);
  return (uint32_t)(next & 0xffffffff);
}
