
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcg_state_8 {int state; } ;


 int PCG_DEFAULT_MULTIPLIER_8 ;

inline void pcg_mcg_8_step_r(struct pcg_state_8 *rng) {
  rng->state = rng->state * PCG_DEFAULT_MULTIPLIER_8;
}
