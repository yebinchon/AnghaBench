
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pcg_state_8 {unsigned int state; } ;


 int pcg_unique_8_step_r (struct pcg_state_8*) ;

inline void pcg_unique_8_srandom_r(struct pcg_state_8 *rng, uint8_t initstate) {
  rng->state = 0U;
  pcg_unique_8_step_r(rng);
  rng->state += initstate;
  pcg_unique_8_step_r(rng);
}
