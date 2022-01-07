
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcg_state_setseq_32 {int state; int inc; } ;


 int PCG_DEFAULT_MULTIPLIER_32 ;

inline void pcg_setseq_32_step_r(struct pcg_state_setseq_32 *rng) {
  rng->state = rng->state * PCG_DEFAULT_MULTIPLIER_32 + rng->inc;
}
