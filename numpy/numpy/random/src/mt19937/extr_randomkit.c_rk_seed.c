
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long* key; int pos; scalar_t__ has_binomial; scalar_t__ has_gauss; scalar_t__ gauss; } ;
typedef TYPE_1__ rk_state ;


 int RK_STATE_LEN ;

void rk_seed(unsigned long seed, rk_state *state) {
  int pos;
  seed &= 0xffffffffUL;


  for (pos = 0; pos < RK_STATE_LEN; pos++) {
    state->key[pos] = seed;
    seed = (1812433253UL * (seed ^ (seed >> 30)) + pos + 1) & 0xffffffffUL;
  }
  state->pos = RK_STATE_LEN;
  state->gauss = 0;
  state->has_gauss = 0;
  state->has_binomial = 0;
}
