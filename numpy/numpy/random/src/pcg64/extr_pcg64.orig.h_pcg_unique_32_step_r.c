
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcg_state_32 {int state; } ;


 int PCG_DEFAULT_MULTIPLIER_32 ;

inline void pcg_unique_32_step_r(struct pcg_state_32 *rng) {
  rng->state =
      rng->state * PCG_DEFAULT_MULTIPLIER_32 + (uint32_t)(((intptr_t)rng) | 1u);
}
