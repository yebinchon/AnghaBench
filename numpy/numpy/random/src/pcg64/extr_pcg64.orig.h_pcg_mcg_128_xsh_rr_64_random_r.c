
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pcg_state_128 {int state; } ;


 int pcg_mcg_128_step_r (struct pcg_state_128*) ;
 int pcg_output_xsh_rr_128_64 (int ) ;

inline uint64_t pcg_mcg_128_xsh_rr_64_random_r(struct pcg_state_128 *rng) {
  pcg_mcg_128_step_r(rng);
  return pcg_output_xsh_rr_128_64(rng->state);
}
