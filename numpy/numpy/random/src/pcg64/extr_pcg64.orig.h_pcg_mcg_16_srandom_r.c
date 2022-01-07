
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;
struct pcg_state_16 {unsigned int state; } ;



inline void pcg_mcg_16_srandom_r(struct pcg_state_16 *rng, uint16_t initstate) {
  rng->state = initstate | 1u;
}
