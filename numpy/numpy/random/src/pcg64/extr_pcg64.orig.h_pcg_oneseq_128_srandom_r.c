
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcg_state_128 {unsigned int state; } ;
typedef scalar_t__ pcg128_t ;


 int pcg_oneseq_128_step_r (struct pcg_state_128*) ;

inline void pcg_oneseq_128_srandom_r(struct pcg_state_128 *rng,
                                     pcg128_t initstate) {
  rng->state = 0U;
  pcg_oneseq_128_step_r(rng);
  rng->state += initstate;
  pcg_oneseq_128_step_r(rng);
}
