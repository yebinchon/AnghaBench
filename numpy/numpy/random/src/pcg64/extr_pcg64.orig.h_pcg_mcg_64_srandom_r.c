
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct pcg_state_64 {unsigned int state; } ;



inline void pcg_mcg_64_srandom_r(struct pcg_state_64 *rng, uint64_t initstate) {
  rng->state = initstate | 1u;
}
