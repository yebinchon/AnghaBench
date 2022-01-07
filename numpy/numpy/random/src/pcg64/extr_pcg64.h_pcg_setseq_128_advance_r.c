
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inc; int state; } ;
typedef TYPE_1__ pcg_state_setseq_128 ;
typedef int pcg128_t ;


 int PCG_DEFAULT_MULTIPLIER_128 ;
 int pcg_advance_lcg_128 (int ,int ,int ,int ) ;

__attribute__((used)) static inline void pcg_setseq_128_advance_r(pcg_state_setseq_128 *rng,
                                            pcg128_t delta) {
  rng->state = pcg_advance_lcg_128(rng->state, delta,
                                   PCG_DEFAULT_MULTIPLIER_128, rng->inc);
}
