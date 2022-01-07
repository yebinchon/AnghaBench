
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcg_state_32 {int state; } ;


 int pcg_output_rxs_m_xs_32_32 (int ) ;
 int pcg_unique_32_step_r (struct pcg_state_32*) ;

inline uint32_t pcg_unique_32_rxs_m_xs_32_random_r(struct pcg_state_32 *rng) {
  uint32_t oldstate = rng->state;
  pcg_unique_32_step_r(rng);
  return pcg_output_rxs_m_xs_32_32(oldstate);
}
