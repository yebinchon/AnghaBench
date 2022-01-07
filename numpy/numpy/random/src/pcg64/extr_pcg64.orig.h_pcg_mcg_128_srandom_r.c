
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcg_state_128 {unsigned int state; } ;
typedef unsigned int pcg128_t ;



inline void pcg_mcg_128_srandom_r(struct pcg_state_128 *rng,
                                  pcg128_t initstate) {
  rng->state = initstate | 1u;
}
