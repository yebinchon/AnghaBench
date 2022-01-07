
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;
struct pcg_state_setseq_16 {unsigned int state; unsigned int inc; } ;


 int pcg_setseq_16_step_r (struct pcg_state_setseq_16*) ;

inline void pcg_setseq_16_srandom_r(struct pcg_state_setseq_16 *rng,
                                    uint16_t initstate, uint16_t initseq) {
  rng->state = 0U;
  rng->inc = (initseq << 1u) | 1u;
  pcg_setseq_16_step_r(rng);
  rng->state += initstate;
  pcg_setseq_16_step_r(rng);
}
