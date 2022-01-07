
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcg_state_setseq_64 {int state; int inc; } ;


 int PCG_DEFAULT_MULTIPLIER_64 ;

inline void pcg_setseq_64_step_r(struct pcg_state_setseq_64 *rng) {
  rng->state = rng->state * PCG_DEFAULT_MULTIPLIER_64 + rng->inc;
}
