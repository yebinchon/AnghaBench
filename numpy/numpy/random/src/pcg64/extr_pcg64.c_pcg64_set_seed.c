
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int pcg_state; } ;
typedef TYPE_1__ pcg64_state ;
typedef int pcg128_t ;


 int pcg64_srandom_r (int ,int,int) ;

extern void pcg64_set_seed(pcg64_state *state, uint64_t *seed, uint64_t *inc) {
  pcg128_t s, i;

  s = (((pcg128_t)seed[0]) << 64) | seed[1];
  i = (((pcg128_t)inc[0]) << 64) | inc[1];






  pcg64_srandom_r(state->pcg_state, s, i);
}
