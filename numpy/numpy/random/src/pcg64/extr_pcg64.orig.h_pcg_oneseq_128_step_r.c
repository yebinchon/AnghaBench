
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcg_state_128 {int state; } ;


 int PCG_DEFAULT_INCREMENT_128 ;
 int PCG_DEFAULT_MULTIPLIER_128 ;

inline void pcg_oneseq_128_step_r(struct pcg_state_128 *rng) {
  rng->state =
      rng->state * PCG_DEFAULT_MULTIPLIER_128 + PCG_DEFAULT_INCREMENT_128;
}
