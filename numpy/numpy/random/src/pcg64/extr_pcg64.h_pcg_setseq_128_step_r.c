
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int inc; } ;
typedef TYPE_1__ pcg_state_setseq_128 ;


 int PCG_DEFAULT_MULTIPLIER_128 ;

__attribute__((used)) static inline void pcg_setseq_128_step_r(pcg_state_setseq_128 *rng) {
  rng->state = rng->state * PCG_DEFAULT_MULTIPLIER_128 + rng->inc;
}
