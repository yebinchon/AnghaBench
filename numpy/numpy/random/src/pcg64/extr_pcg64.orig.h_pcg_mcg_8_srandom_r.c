
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
struct pcg_state_8 {unsigned int state; } ;



inline void pcg_mcg_8_srandom_r(struct pcg_state_8 *rng, uint8_t initstate) {
  rng->state = initstate | 1u;
}
