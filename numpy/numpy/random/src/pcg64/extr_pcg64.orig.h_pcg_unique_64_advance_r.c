
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pcg_state_64 {int state; } ;


 int PCG_DEFAULT_MULTIPLIER_64 ;
 int pcg_advance_lcg_64 (int ,int ,int ,int ) ;

inline void pcg_unique_64_advance_r(struct pcg_state_64 *rng, uint64_t delta) {
  rng->state = pcg_advance_lcg_64(rng->state, delta, PCG_DEFAULT_MULTIPLIER_64,
                                  (uint64_t)(((intptr_t)rng) | 1u));
}
