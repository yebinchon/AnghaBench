
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int pcg_state; } ;
typedef TYPE_1__ pcg64_state ;
typedef int pcg128_t ;


 int pcg64_advance_r (int ,int) ;

extern void pcg64_advance(pcg64_state *state, uint64_t *step) {
  pcg128_t delta;

  delta = (((pcg128_t)step[0]) << 64) | step[1];




  pcg64_advance_r(state->pcg_state, delta);
}
