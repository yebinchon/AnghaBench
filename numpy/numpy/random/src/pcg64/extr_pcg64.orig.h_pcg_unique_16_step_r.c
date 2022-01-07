
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pcg_state_16 {int state; } ;


 int PCG_DEFAULT_MULTIPLIER_16 ;

inline void pcg_unique_16_step_r(struct pcg_state_16 *rng) {
  rng->state =
      rng->state * PCG_DEFAULT_MULTIPLIER_16 + (uint16_t)(((intptr_t)rng) | 1u);
}
