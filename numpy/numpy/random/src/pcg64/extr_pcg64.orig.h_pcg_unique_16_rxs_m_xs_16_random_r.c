
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pcg_state_16 {int state; } ;


 int pcg_output_rxs_m_xs_16_16 (int ) ;
 int pcg_unique_16_step_r (struct pcg_state_16*) ;

inline uint16_t pcg_unique_16_rxs_m_xs_16_random_r(struct pcg_state_16 *rng) {
  uint16_t oldstate = rng->state;
  pcg_unique_16_step_r(rng);
  return pcg_output_rxs_m_xs_16_16(oldstate);
}
