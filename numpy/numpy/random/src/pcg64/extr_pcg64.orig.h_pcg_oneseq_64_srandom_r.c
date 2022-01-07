
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pcg_state_64 {unsigned int state; } ;


 int pcg_oneseq_64_step_r (struct pcg_state_64*) ;

inline void pcg_oneseq_64_srandom_r(struct pcg_state_64 *rng,
                                    uint64_t initstate) {
  rng->state = 0U;
  pcg_oneseq_64_step_r(rng);
  rng->state += initstate;
  pcg_oneseq_64_step_r(rng);
}
