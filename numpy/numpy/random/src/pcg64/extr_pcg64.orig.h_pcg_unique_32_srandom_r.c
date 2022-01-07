
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pcg_state_32 {unsigned int state; } ;


 int pcg_unique_32_step_r (struct pcg_state_32*) ;

inline void pcg_unique_32_srandom_r(struct pcg_state_32 *rng,
                                    uint32_t initstate) {
  rng->state = 0U;
  pcg_unique_32_step_r(rng);
  rng->state += initstate;
  pcg_unique_32_step_r(rng);
}
