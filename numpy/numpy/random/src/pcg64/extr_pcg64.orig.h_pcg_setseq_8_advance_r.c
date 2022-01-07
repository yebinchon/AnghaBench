
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pcg_state_setseq_8 {int inc; int state; } ;


 int PCG_DEFAULT_MULTIPLIER_8 ;
 int pcg_advance_lcg_8 (int ,int ,int ,int ) ;

inline void pcg_setseq_8_advance_r(struct pcg_state_setseq_8 *rng,
                                   uint8_t delta) {
  rng->state =
      pcg_advance_lcg_8(rng->state, delta, PCG_DEFAULT_MULTIPLIER_8, rng->inc);
}
