
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct pcg_state_32 {unsigned int state; } ;



inline void pcg_mcg_32_srandom_r(struct pcg_state_32 *rng, uint32_t initstate) {
  rng->state = initstate | 1u;
}
