
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct pcg_state_32 {int state; } ;


 int pcg_output_xsh_rr_32_16 (int ) ;
 int pcg_unique_32_step_r (struct pcg_state_32*) ;

inline uint16_t pcg_unique_32_xsh_rr_16_random_r(struct pcg_state_32 *rng) {
  uint32_t oldstate = rng->state;
  pcg_unique_32_step_r(rng);
  return pcg_output_xsh_rr_32_16(oldstate);
}
