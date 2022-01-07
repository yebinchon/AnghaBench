
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcg_state_128 {int state; } ;
typedef int pcg128_t ;


 int PCG_DEFAULT_MULTIPLIER_128 ;
 int pcg_advance_lcg_128 (int ,int ,int ,unsigned int) ;

inline void pcg_mcg_128_advance_r(struct pcg_state_128 *rng, pcg128_t delta) {
  rng->state =
      pcg_advance_lcg_128(rng->state, delta, PCG_DEFAULT_MULTIPLIER_128, 0u);
}
