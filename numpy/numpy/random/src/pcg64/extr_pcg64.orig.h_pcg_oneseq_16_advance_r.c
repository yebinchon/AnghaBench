
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pcg_state_16 {int state; } ;


 int PCG_DEFAULT_INCREMENT_16 ;
 int PCG_DEFAULT_MULTIPLIER_16 ;
 int pcg_advance_lcg_16 (int ,int ,int ,int ) ;

inline void pcg_oneseq_16_advance_r(struct pcg_state_16 *rng, uint16_t delta) {
  rng->state = pcg_advance_lcg_16(rng->state, delta, PCG_DEFAULT_MULTIPLIER_16,
                                  PCG_DEFAULT_INCREMENT_16);
}
