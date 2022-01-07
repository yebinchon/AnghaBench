
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pcg_state_setseq_8 {int state; } ;


 int pcg_output_rxs_m_xs_8_8 (int ) ;
 int pcg_setseq_8_step_r (struct pcg_state_setseq_8*) ;

inline uint8_t
pcg_setseq_8_rxs_m_xs_8_random_r(struct pcg_state_setseq_8 *rng) {
  uint8_t oldstate = rng->state;
  pcg_setseq_8_step_r(rng);
  return pcg_output_rxs_m_xs_8_8(oldstate);
}
