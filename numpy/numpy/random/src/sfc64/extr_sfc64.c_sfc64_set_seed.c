
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_3__ {int* s; } ;
typedef TYPE_1__ sfc64_state ;


 int sfc64_next (int*) ;

extern void sfc64_set_seed(sfc64_state *state, uint64_t *seed) {



  int i;

  state->s[0] = seed[0];
  state->s[1] = seed[1];
  state->s[2] = seed[2];
  state->s[3] = 1;

  for (i=0; i<12; i++) {
    (void)sfc64_next(state->s);
  }
}
