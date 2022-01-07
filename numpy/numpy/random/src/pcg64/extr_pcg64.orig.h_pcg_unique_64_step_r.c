
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pcg_state_64 {int state; } ;


 int PCG_DEFAULT_MULTIPLIER_64 ;

inline void pcg_unique_64_step_r(struct pcg_state_64 *rng) {
  rng->state =
      rng->state * PCG_DEFAULT_MULTIPLIER_64 + (uint64_t)(((intptr_t)rng) | 1u);
}
