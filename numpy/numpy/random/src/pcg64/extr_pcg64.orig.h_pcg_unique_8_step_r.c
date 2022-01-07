
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pcg_state_8 {int state; } ;


 int PCG_DEFAULT_MULTIPLIER_8 ;

inline void pcg_unique_8_step_r(struct pcg_state_8 *rng) {
  rng->state =
      rng->state * PCG_DEFAULT_MULTIPLIER_8 + (uint8_t)(((intptr_t)rng) | 1u);
}
