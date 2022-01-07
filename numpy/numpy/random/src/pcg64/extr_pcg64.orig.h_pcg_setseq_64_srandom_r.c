
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct pcg_state_setseq_64 {unsigned int state; unsigned int inc; } ;


 int pcg_setseq_64_step_r (struct pcg_state_setseq_64*) ;

inline void pcg_setseq_64_srandom_r(struct pcg_state_setseq_64 *rng,
                                    uint64_t initstate, uint64_t initseq) {
  rng->state = 0U;
  rng->inc = (initseq << 1u) | 1u;
  pcg_setseq_64_step_r(rng);
  rng->state += initstate;
  pcg_setseq_64_step_r(rng);
}
